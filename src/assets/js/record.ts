enum State {
  UNKNOWN = "unknown",
  RECORDING = "recording",
  READY = "ready",
  PLAYING = "playing",
  STOPPED = "stopped",
  PERMISSION_DENIED = "permission_denied",
}

class AudioRecorder {
  playbackSpeed: number = 1 / 4;
  isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);

  state: State = State.UNKNOWN;
  mediaRecorder: MediaRecorder | null = null;
  chunks: Blob[] = [];
  audioElem: HTMLAudioElement | null = null;

  stoppedIcon = document.getElementById("stopped");
  recordingIcon = document.getElementById("recording");
  playingIcon = document.getElementById("playing");
  nothingIcon = document.getElementById("nothing");

  constructor() {
    console.log(`Running in ${this.isMobile ? "mobile" : "desktop"} mode.`);
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

  initialize() {
    if (!this.audioElem) {
      this.audioElem = document.createElement("audio");
      this.audioElem.controls = true;
      this.audioElem.onended = this.stopPlaying.bind(this);
    }
  }

  ondataavailable(event: BlobEvent) {
    if (event.data.size > 0) {
      this.chunks.push(event.data);
    }
  }

  onstop() {
    if (!this.audioElem) {
      console.error("Audio element is not initialized.");
      return;
    }
    console.log(`Recording stopped, processing audio data: ${this.chunks.length} chunks.`);
    this.audioElem.src = window.URL.createObjectURL(new Blob(this.chunks, { type: 'audio/webm' }));
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
    this.setState(State.READY);
    this.mediaRecorder.stop();
    console.log("Recording stopped.");
    while (!this.audioElem || !this.audioAvailable()) {
      console.log("Waiting for audio source to be created...");
      await sleep(100);
    }
  }

  play() {
    if (!this.audioElem || !this.audioAvailable()) {
      console.error("No audio currently available to play.");
      return;
    }
    this.setState(State.UNKNOWN);
    if (!this.isMobile) {
      const audioElem = document.createElement("audio");
      audioElem.src = this.audioElem.src;
      audioElem.controls = true;
      audioElem.onended = this.stopPlaying.bind(this);
      this.audioElem = audioElem;
    }
    this.audioElem.playbackRate = this.playbackSpeed;
    console.log("Playing audio.");
    this.setState(State.PLAYING);
    this.audioElem.play()
      .then(() => { console.log("Audio playback started.") })
      .catch(error => {
        console.error("Error playing audio:", error);
        this.setState(State.UNKNOWN);
      });
  }

  stopPlaying() {
    if (!this.audioElem || !this.audioAvailable()) {
      console.error("No audio currently playing to stop.");
      return;
    }
    this.setState(State.UNKNOWN);
    this.audioElem.pause();
    this.audioElem.src = "";
    console.log("Audio playback stopped.");
    this.setState(State.STOPPED);
  }

  audioAvailable(): boolean {
    if (!this.audioElem) {
      return false;
    }
    return this.audioElem.src.startsWith("blob:");
  }

  setState(newState: State): void {
    this.state = newState;
    console.log(`State changed to: ${newState}`);
    switch (newState) {
      case State.STOPPED:
        this.showIcons(this.stoppedIcon);
        break;
      case State.RECORDING:
        this.showIcons(this.recordingIcon);
        break;
      case State.READY:
        if (this.isMobile) {
          this.showIcons(this.stoppedIcon);
        } else {
          this.showIcons(this.nothingIcon);
        }
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
  recorder.initialize();
  switch (recorder.state) {
    case State.STOPPED:
      recorder.record();
      break;
    case State.RECORDING:
      await recorder.stopRecording();
      if (!recorder.isMobile) {
        recorder.play();
      }
      break;
    case State.READY:
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
