import { State } from "./state.js";
export default class PlayRecordControls {
    constructor() {
        this.recordIcon = document.getElementById("record");
        this.recordingIcon = document.getElementById("recording");
        this.playIcon = document.getElementById("play");
        this.playingIcon = document.getElementById("playing");
        this.state = State.STOPPED;
        this.nextState = State.RECORDING;
        this.showControls([this.recordIcon]);
    }
    initializeEventListeners(callbacks) {
        var _a, _b, _c, _d;
        (_a = this.recordIcon) === null || _a === void 0 ? void 0 : _a.addEventListener("click", callbacks.record.bind(this));
        (_b = this.recordingIcon) === null || _b === void 0 ? void 0 : _b.addEventListener("click", callbacks.stopRecording.bind(this));
        (_c = this.playIcon) === null || _c === void 0 ? void 0 : _c.addEventListener("click", callbacks.play.bind(this));
        (_d = this.playingIcon) === null || _d === void 0 ? void 0 : _d.addEventListener("click", callbacks.stopPlaying.bind(this));
        document.addEventListener("keydown", (e) => {
            if (e.key === " ") {
                e.preventDefault();
                if (this.state === State.RECORDING) {
                    callbacks.stopRecording();
                }
                else if (this.state === State.PLAYING) {
                    callbacks.stopPlaying();
                }
                else if (this.state === State.STOPPED) {
                    if (this.nextState === State.RECORDING) {
                        callbacks.record();
                    }
                    else if (this.nextState === State.PLAYING) {
                        callbacks.play();
                    }
                }
            }
        });
    }
    markRecording() {
        this.setState(State.RECORDING);
    }
    markPlaying() {
        this.setState(State.PLAYING);
    }
    markStopped() {
        this.setState(State.STOPPED);
    }
    setState(state) {
        if (state === State.RECORDING) {
            this.showControls([this.recordingIcon]);
            this.state = State.RECORDING;
            this.nextState = State.STOPPED;
        }
        else if (state === State.STOPPED) {
            this.nextState = this.state === State.RECORDING ? State.PLAYING : State.RECORDING;
            this.showControls([this.playIcon, this.recordIcon]);
            this.state = State.STOPPED;
        }
        else if (state === State.PLAYING) {
            this.showControls([this.playingIcon]);
            this.state = State.PLAYING;
            this.nextState = State.STOPPED;
        }
    }
    showControls(activeIcons) {
        [this.recordIcon, this.recordingIcon, this.playIcon, this.playingIcon].forEach(icon => {
            if (icon) {
                icon.style.display = (activeIcons.includes(icon)) ? "inline-block" : "none";
            }
        });
    }
}
