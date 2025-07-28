enum State {
  UNKNOWN = "unknown",
  RECORDING = "recording",
  STOPPED = "stopped",
}

interface RecorderDeviceInterface {
  start(): Promise<void>;
  stop(): Promise<string>;
}

class BrowserRecorderDevice implements RecorderDeviceInterface {
  private mediaRecorder: MediaRecorder | null = null;
  private state: State = State.UNKNOWN;
  private chunks: Blob[] = [];

  constructor() {
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      console.error("MediaDevices API is not supported in this browser.");
      return;
    }
    navigator.mediaDevices.getUserMedia({ audio: true })
      .then(stream => {
        this.mediaRecorder = new MediaRecorder(stream)
        this.mediaRecorder.onstart = this.onStart.bind(this);
        this.mediaRecorder.ondataavailable = this.onDataAvailable.bind(this);
        this.mediaRecorder.onstop = this.onStop.bind(this);
        this.state = State.STOPPED;
        console.log("Microphone access granted.");
      })
      .catch(error => {
        console.error("Error accessing microphone:", error)
      });
  }

  private onStart() {
    console.log("MediaRecorder started.");
    this.state = State.RECORDING;
    console.log(`State changed to: ${this.state}`);
  }

  private onDataAvailable(event: BlobEvent) {
    console.log(`Data available: ${event.data.size} bytes.`);
    this.chunks.push(event.data);
  }

  private onStop() {
    console.log("MediaRecorder stopped.");
    this.state = State.STOPPED;
    console.log(`State changed to: ${this.state}`);
  }

  private waitForState(targetState: State): Promise<void> {
    return new Promise(resolve => {
      const interval = setInterval(() => {
        if (this.state === targetState) {
          clearInterval(interval);
          resolve();
        } else {
          console.log(`Waiting for state to change to ${targetState}...`);
        }
      }, 100);
    });
  }

  start(): Promise<void> {
    return new Promise((resolve, reject) => {
      if (!this.mediaRecorder) {
        console.error("MediaRecorder is not initialized.");
        reject(new Error("MediaRecorder is not initialized."));
      } else if (this.state !== State.STOPPED) {
        console.error("Already recording or not ready to start.");
        reject(new Error("Already recording or not ready to start."));
      } else {
        console.log("Starting recording...");
        this.mediaRecorder.start();
        this.waitForState(State.RECORDING).then(() => {
          console.log("Recording started.");
          resolve();
        });
      }
    });
  }

  stop(): Promise<string> {
    return new Promise((resolve, reject) => {
      if (!this.mediaRecorder) {
        console.error("MediaRecorder is not initialized.");
        reject(new Error("MediaRecorder is not initialized."));
      } else if (this.state !== State.RECORDING) {
        console.error("Cannot stop recording, not currently recording.");
        reject(new Error("Cannot stop recording, not currently recording."));
      } else {
        console.log("Stopping recording...");
        this.mediaRecorder.stop();
        this.waitForState(State.STOPPED).then(() => {
          this.getAudioUrl().then(audioUrl => {
            console.log("Recording stopped and audio URL created.");
            this.state = State.STOPPED;
            resolve(audioUrl);
          });
        });
      }
    });
  }

  private getAudioUrl(): Promise<string> {
    return new Promise((resolve, reject) => {
      if (this.chunks.length === 0) {
        console.error("No audio data available.");
        reject(new Error("No audio data available."));
      } else {
        const audioBlob = new Blob(this.chunks, { type: 'audio/webm' });
        this.chunks = []; // Clear chunks after creating the blob
        const audioUrl = window.URL.createObjectURL(audioBlob);
        resolve(audioUrl);
      }
    });
  }
}

class NoopRecorderDevice implements RecorderDeviceInterface {
  start(): Promise<void> {
    return Promise.resolve();
  }
  stop(): Promise<string> {
    return Promise.resolve("");
  }
}

interface PlayerDeviceInterface {
  start(audioUrl: string, playbackSpeed: number, stopCallback: () => void): void;
  stop(): void;
}

class RecorderController {
  recorder: RecorderDeviceInterface = new NoopRecorderDevice();

  playbackSpeed: number = 1 / 4;
  audioUrl: string = "";
  audioElem: HTMLAudioElement = new Audio();

  recordIcon = document.getElementById("record");
  recordingIcon = document.getElementById("recording");
  playIcon = document.getElementById("play");
  playingIcon = document.getElementById("playing");

  constructor(recorder: RecorderDeviceInterface) {
    this.recorder = recorder;

    this.recordIcon?.addEventListener("click", this.record.bind(this));
    this.recordingIcon?.addEventListener("click", this.stopRecording.bind(this));
    this.playIcon?.addEventListener("click", this.play.bind(this));
    this.playingIcon?.addEventListener("click", this.stopPlaying.bind(this));

    this.showControls([this.recordIcon]);
  }

  record(): Promise<void> {
    return new Promise((resolve, reject) => {
      this.recorder.start()
        .then(() => {
          this.showControls([this.recordingIcon]);
          resolve();
        })
        .catch(error => {
          reject(error);
        });
    });
  }

  stopRecording(): Promise<void> {
    return new Promise((resolve, reject) => {
      this.recorder.stop()
        .then(audioUrl => {
          this.audioUrl = audioUrl;
          this.showControls([this.playIcon, this.recordIcon]);
          resolve();
        })
        .catch(error => {
          reject(error);
        });
    });
  }

  play(): void {
    this.audioElem = new Audio();
    this.audioElem.src = this.audioUrl;
    this.audioElem.playbackRate = this.playbackSpeed;
    this.audioElem.onended = this.stopPlaying.bind(this);
    console.log(`Starting playback at ${this.playbackSpeed}x speed.`);
    this.audioElem.play()
      .then(() => {
        console.log("Playback started.");
      })
      .catch(error => {
        console.error("Error starting playback:", error);
      });
    this.showControls([this.playingIcon]);
  }

  stopPlaying(): void {
    console.log("Stopping playback.");
    this.audioElem.pause();
    console.log("Playback stopped.");
    this.showControls([this.playIcon, this.recordIcon]);
  }

  private showControls(activeIcons: (HTMLElement | null)[]): void {
    [this.recordIcon, this.recordingIcon, this.playIcon, this.playingIcon].forEach(icon => {
      if (icon) {
        icon.style.display = (activeIcons.includes(icon)) ? "inline-block" : "none";
      }
    });
  }
}

const recorder = new BrowserRecorderDevice();
const controller = new RecorderController(recorder);
