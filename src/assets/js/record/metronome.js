import boolSwitchControls from "./bool-switch-controls.js";
import plusMinusControls from "./plus-minus-controls.js";
export default class Metronome {
    constructor(audioContext) {
        this.clickHz = 1000;
        this.clickType = "sine";
        this.isPlaying = false;
        this.tempo = 60;
        this.nextClickTime = 0;
        this.scheduleLookahead = 25.0; // Look ahead 25ms
        this.scheduleInterval = 25.0; // Schedule every 25ms
        this.enabled = boolSwitchControls("click-enabled");
        this.bpm = plusMinusControls("bpm", { initial: 60, min: 15, max: 300 });
        this.latency = plusMinusControls("latency", { initial: -75, min: -500, max: 500 });
        this.scheduler = () => {
            // Schedule clicks that fall within our lookahead window
            while (this.nextClickTime < this.audioContext.currentTime + (this.scheduleLookahead / 1000)) {
                this.createClickSound(this.nextClickTime);
                this.nextClickTime += (60 / this.tempo);
            }
            if (this.isPlaying) {
                setTimeout(this.scheduler, this.scheduleInterval);
            }
        };
        this.audioContext = audioContext;
    }
    getPlaybackStartTime(audioStartTime, playbackRate = 1.0) {
        // Scale latency compensation by playback rate
        // At 2x speed, the recorded latency is compressed by 2x, so we need less compensation
        // At 0.5x speed, the recorded latency is stretched by 2x, so we need more compensation
        const scaledCompensation = this.latency() / playbackRate;
        return audioStartTime - (scaledCompensation / 1000);
    }
    createClickSound(when) {
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
    start(startTime = this.audioContext.currentTime, playbackRate) {
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
    stop() {
        this.isPlaying = false;
    }
}
