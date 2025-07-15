"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var State;
(function (State) {
    State["UNKNOWN"] = "unknown";
    State["RECORDING"] = "recording";
    State["PLAYING"] = "playing";
    State["STOPPED"] = "stopped";
    State["PERMISSION_DENIED"] = "permission_denied";
})(State || (State = {}));
class AudioRecorder {
    constructor() {
        this.playbackSpeed = 1 / 4;
        this.state = State.UNKNOWN;
        this.mediaRecorder = null;
        this.chunks = [];
        this.audioElem = null;
        this.stoppedIcon = document.getElementById("stopped");
        this.recordingIcon = document.getElementById("recording");
        this.playingIcon = document.getElementById("playing");
        this.nothingIcon = document.getElementById("nothing");
        navigator.mediaDevices.getUserMedia({ audio: true })
            .then(stream => {
            this.mediaRecorder = new MediaRecorder(stream);
            this.mediaRecorder.ondataavailable = this.ondataavailable.bind(this);
            this.mediaRecorder.onstop = this.onstop.bind(this);
            console.log("Microphone access granted.");
            this.setState(State.STOPPED);
        })
            .catch(error => {
            console.error("Error accessing microphone:", error);
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
    ondataavailable(event) {
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
    stopRecording() {
        return __awaiter(this, void 0, void 0, function* () {
            if (!this.mediaRecorder) {
                console.error("Media recorder is not initialized.");
                return;
            }
            this.setState(State.UNKNOWN);
            this.mediaRecorder.stop();
            console.log("Recording stopped.");
            while (!this.audioElem || !this.audioAvailable()) {
                console.log("Waiting for audio source to be created...");
                yield sleep(100);
            }
        });
    }
    play() {
        return __awaiter(this, void 0, void 0, function* () {
            if (!this.audioElem || !this.audioAvailable()) {
                console.error("No audio currently available to play.");
                return;
            }
            this.setState(State.UNKNOWN);
            this.audioElem.playbackRate = this.playbackSpeed;
            console.log("Playing audio.");
            this.setState(State.PLAYING);
            yield this.audioElem.play();
            console.log("Audio playback started.");
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
    audioAvailable() {
        if (!this.audioElem) {
            return false;
        }
        return this.audioElem.src.startsWith("blob:");
    }
    setState(newState) {
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
    showIcons(activeIcon) {
        [this.stoppedIcon, this.recordingIcon, this.playingIcon, this.nothingIcon].forEach(icon => {
            if (icon) {
                icon.style.display = (icon === activeIcon) ? "block" : "none";
            }
        });
    }
}
const recorder = new AudioRecorder();
function controlHandler() {
    return __awaiter(this, void 0, void 0, function* () {
        console.log("Control key pressed.");
        recorder.initialize();
        switch (recorder.state) {
            case State.STOPPED:
                recorder.record();
                break;
            case State.RECORDING:
                yield recorder.stopRecording();
                yield recorder.play();
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
    });
}
function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}
document.addEventListener("keypress", controlHandler);
document.addEventListener("click", controlHandler);
