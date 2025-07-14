enum State {
  UNKNOWN = "unknown",
  RECORDING = "recording",
  PLAYING = "playing",
  STOPPED = "stopped",
  PERMISSION_DENIED = "permission_denied",
}

class AudioRecorder {
  playbackSpeed: number = 1 / 3;

  state: State = State.UNKNOWN;
  mediaRecorder: MediaRecorder | null = null;
  chunks: Blob[] = [];
  audioElem: HTMLAudioElement | null = null;
  audioSrc: string | null = null;

  stoppedIcon = document.getElementById("stopped");
  recordingIcon = document.getElementById("recording");
  playingIcon = document.getElementById("playing");
  nothingIcon = document.getElementById("nothing");

  constructor() {
    navigator.mediaDevices.getUserMedia({ audio: true })
      .then(stream => {
        this.mediaRecorder = new MediaRecorder(stream)
        this.mediaRecorder.ondataavailable = this.ondataavailable.bind(this);
        this.mediaRecorder.onstop = this.onstop.bind(this);
        console.log("Microphone access granted.");
        this.setState(State.STOPPED)
      })
      .catch(error => {
        console.error("Error accessing microphone:", error)
        this.setState(State.PERMISSION_DENIED);
      });
  }

  ondataavailable(event: BlobEvent) {
    if (event.data.size > 0) {
      this.chunks.push(event.data);
    }
  }

  onstop() {
    this.audioSrc = window.URL.createObjectURL(new Blob(this.chunks, { type: 'audio/webm' }));
    this.chunks = [];
  }

  record() {
    if (!this.mediaRecorder) {
      return;
    }
    this.setState(State.UNKNOWN);
    this.mediaRecorder.start();
    console.log("Recording started.");
    this.setState(State.RECORDING);
  }

  async stopRecording(): Promise<void> {
    if (!this.mediaRecorder) {
      console.error("Media recorder is not initialized.");
      return;
    }
    this.setState(State.UNKNOWN);
    this.mediaRecorder.stop();
    console.log("Recording stopped.");
    while (!this.audioSrc) {
      console.log("Waiting for audio element to be created...");
      await sleep(100);
    }
    this.audioElem = document.createElement("audio");
    this.audioElem.controls = true;
    this.audioElem.onended = this.stopPlaying.bind(this);
    this.audioElem.src = this.audioSrc || "";
  }

  play() {
    if (!this.audioElem) {
      console.error("No audio currently available to play.");
      return;
    }
    this.setState(State.UNKNOWN);
    this.audioElem.playbackRate = this.playbackSpeed;
    this.audioElem.play();
    console.log("Playing audio.");
    this.setState(State.PLAYING);
  }

  stopPlaying() {
    if (!this.audioElem) {
      console.error("No audio currently playing to stop.");
      return;
    }
    this.setState(State.UNKNOWN);
    this.audioElem.pause();
    this.audioElem.src = "";
    this.audioElem = null;
    this.audioSrc = null;
    console.log("Audio playback stopped.");
    this.setState(State.STOPPED);
  }

  setState(newState: State): void {
    this.state = newState;
    switch (newState) {
      case State.STOPPED:
        this.showIcons(this.stoppedIcon);
        break;
      case State.RECORDING:
        this.showIcons(this.recordingIcon);
        break;
      case State.PLAYING:
        this.showIcons(this.playingIcon);
        break;
      case State.UNKNOWN:
      case State.PERMISSION_DENIED:
        this.showIcons(this.nothingIcon);
        break;
    }
  }

  private showIcons(activeIcon?: HTMLElement | null): void {
    [this.stoppedIcon, this.recordingIcon, this.playingIcon, this.nothingIcon].forEach(icon => {
      if (icon) {
        icon.style.display = (icon === activeIcon) ? "block" : "none";
      }
    });
  }
}

const recorder = new AudioRecorder();

async function controlHandler() {
  console.log("Control key pressed.");
  switch (recorder.state) {
    case State.STOPPED:
      recorder.record();
      break;
    case State.RECORDING:
      await recorder.stopRecording();
      recorder.play();
      break;
    case State.PLAYING:
      recorder.stopPlaying();
      recorder.record();
      break;
    case State.PERMISSION_DENIED:
      break;
    case State.UNKNOWN:
    default:
      console.error("Recorder is in an unknown state.");
      break;
  }
}

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}

document.addEventListener("keypress", controlHandler);
document.addEventListener("click", controlHandler);
