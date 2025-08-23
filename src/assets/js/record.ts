enum State {
  UNKNOWN = "unknown",
  RECORDING = "recording",
  STOPPED = "stopped",
  PLAYING = "playing",
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

  minus(): void {
    if (this.numerator === 1) {
      this.denominator++;
    } else {
      this.numerator--;
    }
    this.updateValueInput();
  }

  plus(): void {
    if (this.denominator === 1) {
      this.numerator++;
    } else {
      this.denominator--;
    }
    this.updateValueInput();
  }
}

class MetronomePlayer {
  clickFrequency: number = 1000; // Frequency of the click sound in Hz
  clickType: OscillatorType = "sine"; // sine, square, sawtooth, or triangle wave

  isPlaying: boolean = false;
  tempo: number = 60;
  nextClickTime: number = 0;

  private audioContext: AudioContext = new AudioContext();

  private createClickSound() {
    const oscillator = this.audioContext.createOscillator();
    const gainNode = this.audioContext.createGain();

    oscillator.type = this.clickType;
    oscillator.frequency.setValueAtTime(this.clickFrequency, this.audioContext.currentTime);

    // Create a quick decay for the click sound
    gainNode.gain.setValueAtTime(1, this.audioContext.currentTime);
    gainNode.gain.exponentialRampToValueAtTime(0.001, this.audioContext.currentTime + 0.05); // Rapid decay
    gainNode.gain.setValueAtTime(1, this.audioContext.currentTime + 0.05);

    oscillator.connect(gainNode);
    gainNode.connect(this.audioContext.destination);

    return oscillator;
  }

  private scheduleClick() {
    while (this.nextClickTime < this.audioContext.currentTime + 0.1) { // Schedule slightly ahead
      const click = this.createClickSound();
      click.start(this.nextClickTime);
      click.stop(this.nextClickTime + 0.05); // Stop after a short duration

      this.nextClickTime += (60 / this.tempo); // Increment time for the next beat
    }

    if (this.isPlaying) {
      requestAnimationFrame(this.scheduleClick.bind(this)); // Continuously schedule
    }
  }

  startMetronome(tempo: number) {
    if (!this.isPlaying) {
      this.isPlaying = true;
      this.tempo = tempo;
      this.nextClickTime = this.audioContext.currentTime; // Start from current time
      this.scheduleClick();
    }
  }

  stopMetronome() {
    this.isPlaying = false;
  }
}

class MetronomeControls {
  enabled: boolean = false;
  bpm: number = 60;

  private metronomePlayer: MetronomePlayer = new MetronomePlayer();

  private clickEnabledCheckbox = document.getElementById("click-enabled") as HTMLInputElement;

  private bpmValueInput = document.getElementById("bpm-val") as HTMLInputElement;
  private bpmMinusButtom = document.getElementById("bpm-minus");
  private bpmPlusButton = document.getElementById("bpm-plus");

  private minBpm: number = 15;
  private maxBpm: number = 300;

  constructor() {
    this.clickEnabledCheckbox?.addEventListener("change", this.enableMetronome.bind(this));

    this.bpmValueInput?.addEventListener("change", this.setBpm.bind(this));
    this.bpmMinusButtom?.addEventListener("click", this.minusBpm.bind(this));
    this.bpmPlusButton?.addEventListener("click", this.plusBpm.bind(this));

    this.updateValueInputs();
  }

  play(playbackSpeed: number): void {
    if (!this.enabled) {
      return;
    }
    console.debug(`Starting click track at ${this.bpm} BPM at ${playbackSpeed}x speed.`);
    this.metronomePlayer.startMetronome(this.bpm * playbackSpeed);
  }

  stop(): void {
    if (!this.enabled) {
      return;
    }
    console.debug("Stopping click track.");
    this.metronomePlayer.stopMetronome();
  }

  private enableMetronome(event: Event): void {
    this.enabled = (event.target as HTMLInputElement).checked;
    this.updateValueInputs();
  }

  private setBpm(event: Event): void {
    const val = this.parseValue(event.target);
    this.bpm = val !== null ? val : this.bpm;
    this.updateValueInputs();
  }

  private parseValue(target: EventTarget | null): number | null {
    if (!(target instanceof HTMLInputElement)) {
      console.error("Invalid target for playback speed input.");
      return null;
    }
    const value = parseInt(target.value.trim(), 10);
    if (isNaN(value) || value < 0) {
      console.error("Number must be a positive integer.");
      return null;
    }
    return value;
  }

  private minusBpm(): void {
    this.bpm--;
    this.updateValueInputs();
  }

  private plusBpm(): void {
    this.bpm++;
    this.updateValueInputs();
  }

  private updateValueInputs(): void {
    this.bpm = Math.max(this.minBpm, Math.min(this.maxBpm, this.bpm));
    this.bpmValueInput.value = this.bpm.toString();
    console.debug(`Metronome settings: Enabled=${this.enabled}, BPM=${this.bpm}.`);
  }
}

class RecorderController {
  state: State = State.STOPPED;
  nextState: State = State.RECORDING;

  recorder: RecorderDeviceInterface = new NoopRecorderDevice();

  playbackSpeed: PlaybackSpeedControls = new PlaybackSpeedControls();
  metronome: MetronomeControls = new MetronomeControls();

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

    document.addEventListener("keydown", (e) => {
      if (e.key === " ") {
        e.preventDefault(); // Prevent default spacebar behavior (scrolling)
        if (this.state === State.RECORDING) {
          this.stopRecording();
        } else if (this.state === State.PLAYING) {
          this.stopPlaying();
        } else if (this.state === State.STOPPED) {
          if (this.nextState === State.RECORDING) {
            this.record();
          } else if (this.nextState === State.PLAYING) {
            this.play();
          }
        }
      } else if (e.key === "ArrowRight") {
        e.preventDefault(); // Prevent default behavior
        this.playbackSpeed.plus();
      } else if (e.key === "ArrowLeft") {
        e.preventDefault(); // Prevent default behavior
        this.playbackSpeed.minus();
      }
    });

    this.showControls([this.recordIcon]);
  }

  record(): Promise<void> {
    return new Promise((resolve, reject) => {
      this.metronome.play(1);
      this.recorder.start()
        .then(() => {
          this.showControls([this.recordingIcon]);
          this.state = State.RECORDING;
          this.nextState = State.STOPPED;
          resolve();
        })
        .catch(error => {
          reject(error);
        });
    });
  }

  stopRecording(): Promise<void> {
    return new Promise((resolve, reject) => {
      this.metronome.stop();
      this.recorder.stop()
        .then(audioUrl => {
          this.audioUrl = audioUrl;
          this.showControls([this.playIcon, this.recordIcon]);
          this.state = State.STOPPED;
          this.nextState = State.PLAYING;
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
        this.metronome.play(this.playbackSpeed.value());
        console.debug("Playback started.");
        this.state = State.PLAYING;
        this.nextState = State.STOPPED;
      })
      .catch(error => {
        console.error("Error starting playback:", error);
      });
    this.showControls([this.playingIcon]);
  }

  stopPlaying(): void {
    console.debug("Stopping playback.");
    this.audioElem.pause();
    this.metronome.stop();
    console.debug("Playback stopped.");
    this.showControls([this.playIcon, this.recordIcon]);
    this.state = State.STOPPED;
    this.nextState = State.RECORDING;
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
