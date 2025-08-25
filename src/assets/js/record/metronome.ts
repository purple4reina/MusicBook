import boolSwitchControls from "./bool-switch-controls.js";
import plusMinusControls from "./plus-minus-controls.js";

export default class Metronome {
  private audioContext: AudioContext;

  private clickHz: number = 1000;
  private clickType: OscillatorType = "sine";

  private isPlaying: boolean = false;
  private tempo: number = 60;
  private nextClickTime: number = 0;
  private scheduleLookahead: number = 25.0; // Look ahead 25ms
  private scheduleInterval: number = 25.0; // Schedule every 25ms

  public enabled = boolSwitchControls("click-enabled");
  public bpm = plusMinusControls("bpm", { initial: 60, min: 15, max: 300 });
  public latency = plusMinusControls("latency", { initial: -75, min: -500, max: 500 });

  constructor(audioContext: AudioContext) {
    this.audioContext = audioContext;
  }

  getPlaybackStartTime(audioStartTime: number, playbackRate: number = 1.0): number {
    const scaledCompensation = this.latency() / playbackRate;
    return audioStartTime - (scaledCompensation / 1000);
  }

  private createClickSound(when: number): void {
    const oscillator = this.audioContext.createOscillator();
    const gainNode = this.audioContext.createGain();

    oscillator.type = this.clickType;
    oscillator.frequency.setValueAtTime(this.clickHz, when);

    // Create a sharp click envelope
    gainNode.gain.setValueAtTime(0, when);
    gainNode.gain.linearRampToValueAtTime(0.3, when + 0.001);
    gainNode.gain.exponentialRampToValueAtTime(0.001, when + 0.05);

    oscillator.connect(gainNode);
    gainNode.connect(this.audioContext.destination);

    oscillator.start(when);
    oscillator.stop(when + 0.05);
  }

  private scheduler = (): void => {
    // Schedule clicks that fall within our lookahead window
    while (this.nextClickTime < this.audioContext.currentTime + (this.scheduleLookahead / 1000)) {
      this.createClickSound(this.nextClickTime);
      this.nextClickTime += (60 / this.tempo);
    }

    if (this.isPlaying) {
      setTimeout(this.scheduler, this.scheduleInterval);
    }
  };

  start(startTime: number = this.audioContext.currentTime, playbackRate: number): void {
    this.tempo = this.bpm() * playbackRate;
    if (this.isPlaying) {
      this.stop();
    }
    const delay = this.isPlaying ? 0 : 10;
    setTimeout(() => {
      this.isPlaying = true;
      this.nextClickTime = startTime;
      this.scheduler();
    }, delay);
  }

  stop(): void {
    this.isPlaying = false;
  }
}
