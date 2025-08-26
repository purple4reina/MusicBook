import boolSwitchControls from "./bool-switch-controls.js";
import plusMinusControls from "./plus-minus-controls.js";
export default class Metronome {
    constructor(audioContext) {
        this.clickHz = 1000;
        this.offbeatHz = 750;
        this.oscillatorType = "square";
        this.nextClickTime = 0;
        this.nextClickSubdivision = 0;
        this.isPlaying = false;
        this.tempo = 60;
        this.scheduleLookahead = 25.0; // Look ahead 25ms
        this.scheduleInterval = 25.0; // Schedule every 25ms
        this.countOffAllowance = 100; // Allow 100ms before the first click
        this.enabled = boolSwitchControls("click-enabled");
        this.bpm = plusMinusControls("bpm", { initial: 60, min: 15, max: 300 });
        this.latency = plusMinusControls("latency", { initial: -75, min: -500, max: 500 });
        this.countOff = plusMinusControls("count-off", { initial: 0, min: 0, max: 8 });
        this.volume = plusMinusControls("click-volume", { initial: 1.0, min: 0, max: 10 });
        this.subdivisions = plusMinusControls("subdivisions", { initial: 1, min: 1, max: 16 });
        this.scheduler = () => {
            // Schedule clicks that fall within our lookahead window
            while (this.nextClickTime < this.audioContext.currentTime + (this.scheduleLookahead / 1000)) {
                const clickHz = this.nextClickSubdivision % this.subdivisions() === 0 ? this.clickHz : this.offbeatHz;
                this.createClickSound(this.nextClickTime, clickHz);
                this.nextClickTime += this.tempo;
                this.nextClickSubdivision++;
            }
            if (this.isPlaying) {
                setTimeout(this.scheduler, this.scheduleInterval);
            }
        };
        this.audioContext = audioContext;
    }
    getPlaybackStartTime(audioStartTime, playbackRate = 1.0) {
        const scaledCompensation = this.latency() / playbackRate;
        let startTime = audioStartTime - (scaledCompensation / 1000);
        if (this.countOff() > 0) {
            startTime += (this.countOffAllowance / playbackRate / 1000);
        }
        return startTime;
    }
    countOffMs() {
        if (!this.enabled() || this.countOff() <= 0) {
            return 0;
        }
        // Calculate the count-off duration in milliseconds
        // Minus 100ms to ensure recording starts before the first click
        return this.countOff() / this.bpm() * 60 * 1000 - this.countOffAllowance;
    }
    click(oscillator, gainNode, hz, when) {
    }
    createClickSound(when, clickHz) {
        const oscillator = this.audioContext.createOscillator();
        const gainNode = this.audioContext.createGain();
        oscillator.type = this.oscillatorType;
        oscillator.frequency.setValueAtTime(clickHz, when);
        // Create a sharp click envelope
        gainNode.gain.setValueAtTime(0, when);
        gainNode.gain.linearRampToValueAtTime(this.volume(), when + 0.001);
        gainNode.gain.exponentialRampToValueAtTime(0.001, when + 0.05);
        oscillator.connect(gainNode);
        gainNode.connect(this.audioContext.destination);
        oscillator.start(when);
        oscillator.stop(when + 0.05);
    }
    start(startTime = this.audioContext.currentTime, playbackRate) {
        const delay = this.isPlaying ? this.tempo : 0;
        if (this.isPlaying) {
            this.stop();
        }
        this.tempo = 60 / (this.bpm() * this.subdivisions() * playbackRate);
        setTimeout(() => {
            this.isPlaying = true;
            this.nextClickTime = startTime;
            this.nextClickSubdivision = 0;
            this.scheduler();
        }, delay);
    }
    stop() {
        this.isPlaying = false;
    }
}
