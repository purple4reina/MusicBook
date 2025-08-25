var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import Metronome from "./metronome.js";
import PlayerDevice from "./player.js";
import RecorderDevice from "./recorder.js";
import fractionControls from "./fraction-controls.js";
import PlayRecordControls from "./play-record-controls.js";
class WebAudioRecorderController {
    constructor() {
        this.audioContext = new AudioContext();
        this.recorder = new RecorderDevice(this.audioContext);
        this.player = new PlayerDevice(this.audioContext);
        this.metronome = new Metronome(this.audioContext);
        this.playbackSpeed = fractionControls("playback", { initNum: 1, initDen: 4, arrowKeys: true });
        this.playRecordControls = new PlayRecordControls();
        this.playRecordControls.initializeEventListeners({
            record: this.record.bind(this),
            stopRecording: this.stopRecording.bind(this),
            play: this.play.bind(this),
            stopPlaying: this.stopPlaying.bind(this),
        });
        this.recorder.initialize().catch(error => {
            console.error("Failed to initialize recorder:", error);
        });
    }
    record() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                // Resume AudioContext if suspended
                if (this.audioContext.state === "suspended") {
                    yield this.audioContext.resume();
                }
                yield this.recorder.reset();
                this.metronome.stop();
                yield new Promise(resolve => setTimeout(resolve, 100));
                // Start metronome immediately if enabled (for count-off and recording)
                if (this.metronome.enabled()) {
                    const startTime = this.audioContext.currentTime;
                    this.metronome.start(startTime, 1);
                }
                setTimeout(() => this.recorder.start(), this.metronome.countOffMs());
                this.playRecordControls.markRecording();
            }
            catch (error) {
                console.error("Error starting recording:", error);
            }
        });
    }
    stopRecording() {
        this.metronome.stop();
        this.recorder.stop();
        this.playRecordControls.markStopped();
    }
    play() {
        const audioBuffer = this.recorder.getAudioBuffer();
        if (!audioBuffer) {
            console.error("No audio buffer available for playback");
            return;
        }
        // Stop any ongoing metronome first
        this.metronome.stop();
        // Start playback and metronome at the same time
        const startTime = this.player.play(audioBuffer, this.playbackSpeed(), () => {
            this.stopPlaying();
        });
        if (this.metronome.enabled()) {
            // Apply latency compensation scaled by playback rate
            const compensatedStartTime = this.metronome.getPlaybackStartTime(startTime, this.playbackSpeed());
            this.metronome.start(compensatedStartTime, this.playbackSpeed());
        }
        this.playRecordControls.markPlaying();
    }
    stopPlaying() {
        this.player.stop();
        this.metronome.stop();
        this.playRecordControls.markStopped();
    }
}
const webAudioController = new WebAudioRecorderController();
