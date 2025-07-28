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
  private stream: MediaStream = new MediaStream();
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
        this.stream = stream;
        this.reset();
        console.log("Microphone access granted.");
      })
      .catch(error => {
        console.error("Error accessing microphone:", error)
      });
  }

  reset() {
    console.debug("Resetting MediaRecorder...");
    this.mediaRecorder = new MediaRecorder(this.stream);
    this.mediaRecorder.onstart = this.onStart.bind(this);
    this.mediaRecorder.ondataavailable = this.onDataAvailable.bind(this);
    this.mediaRecorder.onstop = this.onStop.bind(this);
    this.state = State.STOPPED;
    console.debug(`Recorder reset. State is now: ${this.state}`);
  }

  private onStart() {
    console.debug("MediaRecorder started.");
    this.state = State.RECORDING;
    console.debug(`State changed to: ${this.state}`);
  }

  private onDataAvailable(event: BlobEvent) {
    console.debug(`Data available: ${event.data.size} bytes.`);
    this.chunks.push(event.data);
  }

  private onStop() {
    console.debug("MediaRecorder stopped.");
    this.reset();
    console.debug(`State changed to: ${this.state}`);
  }

  private waitForState(targetState: State): Promise<void> {
    return new Promise(resolve => {
      const interval = setInterval(() => {
        if (this.state === targetState) {
          clearInterval(interval);
          resolve();
        } else {
          console.debug(`Waiting for state to change to ${targetState}...`);
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
        console.debug("Starting recording...");
        this.mediaRecorder.start();
        this.waitForState(State.RECORDING).then(() => {
          console.debug("Recording started.");
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
        console.debug("Stopping recording...");
        this.mediaRecorder.stop();
        this.waitForState(State.STOPPED).then(() => {
          this.getAudioUrl().then(audioUrl => {
            console.debug("Recording stopped and audio URL created.");
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
        const audioBlob = new Blob(this.chunks, { type: "audio/mp4" });
        this.chunks = []; // Clear chunks after creating the blob
        const audioUrl = window.URL.createObjectURL(audioBlob);
        console.debug(`Audio URL created: ${audioUrl}`);
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

class PlaybackSpeedControls {
  private numerator: number = 1;
  private denominator: number = 4;

  private numerValueInput = document.getElementById("playback-numer") as HTMLInputElement;
  private denomValueInput = document.getElementById("playback-denom") as HTMLInputElement;
  private minusButtom = document.getElementById("playback-minus");
  private plusButton = document.getElementById("playback-plus");

  constructor() {
    this.numerValueInput?.addEventListener("change", this.setNumerator.bind(this));
    this.denomValueInput?.addEventListener("change", this.setDenominator.bind(this));
    this.minusButtom?.addEventListener("click", this.minus.bind(this));
    this.plusButton?.addEventListener("click", this.plus.bind(this));
    this.updateValueInput();
  }

  value(): number {
    return this.numerator / this.denominator;
  }

  private updateValueInput(): void {
    if (this.numerValueInput) {
      this.numerValueInput.value = this.numerator.toString();
    }
    if (this.denomValueInput) {
      this.denomValueInput.value = this.denominator.toString();
    }
    console.debug(`Playback speed set to ${this.value()}x`);
  }

  private setNumerator(event: Event): void {
    this.numerator = this.parseValue(event.target) || this.numerator;
    this.updateValueInput();
  }

  private setDenominator(event: Event): void {
    this.denominator = this.parseValue(event.target) || this.denominator;
    this.updateValueInput();
  }

  private parseValue(target: EventTarget | null): number {
    if (!(target instanceof HTMLInputElement)) {
      console.error("Invalid target for playback speed input.");
      return 0;
    }
    const value = parseInt(target.value.trim(), 10);
    if (isNaN(value) || value <= 0) {
      console.error("Number must be a positive integer.");
      return 0;
    }
    return value;
  }

  private minus(): void {
    if (this.numerator === 1) {
      this.denominator++;
    } else {
      this.numerator--;
    }
    this.updateValueInput();
  }

  private plus(): void {
    if (this.denominator === 1) {
      this.numerator++;
    } else {
      this.denominator--;
    }
    this.updateValueInput();
  }
}

class RecorderController {
  recorder: RecorderDeviceInterface = new NoopRecorderDevice();

  playbackSpeed: PlaybackSpeedControls = new PlaybackSpeedControls();
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
    this.audioElem.playbackRate = this.playbackSpeed.value();
    this.audioElem.onended = this.stopPlaying.bind(this);
    console.debug(`Starting playback at ${this.playbackSpeed.value()}x speed.`);
    this.audioElem.play()
      .then(() => {
        console.debug("Playback started.");
      })
      .catch(error => {
        console.error("Error starting playback:", error);
      });
    this.showControls([this.playingIcon]);
  }

  stopPlaying(): void {
    console.debug("Stopping playback.");
    this.audioElem.pause();
    console.debug("Playback stopped.");
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
