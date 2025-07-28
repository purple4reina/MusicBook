"use strict";
var State;
(function (State) {
    State["UNKNOWN"] = "unknown";
    State["RECORDING"] = "recording";
    State["STOPPED"] = "stopped";
})(State || (State = {}));
class BrowserRecorderDevice {
    constructor() {
        this.stream = new MediaStream();
        this.mediaRecorder = null;
        this.state = State.UNKNOWN;
        this.chunks = [];
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
            console.error("Error accessing microphone:", error);
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
    onStart() {
        console.debug("MediaRecorder started.");
        this.state = State.RECORDING;
        console.debug(`State changed to: ${this.state}`);
    }
    onDataAvailable(event) {
        console.debug(`Data available: ${event.data.size} bytes.`);
        this.chunks.push(event.data);
    }
    onStop() {
        console.debug("MediaRecorder stopped.");
        this.reset();
        console.debug(`State changed to: ${this.state}`);
    }
    waitForState(targetState) {
        return new Promise(resolve => {
            const interval = setInterval(() => {
                if (this.state === targetState) {
                    clearInterval(interval);
                    resolve();
                }
                else {
                    console.debug(`Waiting for state to change to ${targetState}...`);
                }
            }, 100);
        });
    }
    start() {
        return new Promise((resolve, reject) => {
            if (!this.mediaRecorder) {
                console.error("MediaRecorder is not initialized.");
                reject(new Error("MediaRecorder is not initialized."));
            }
            else if (this.state !== State.STOPPED) {
                console.error("Already recording or not ready to start.");
                reject(new Error("Already recording or not ready to start."));
            }
            else {
                console.debug("Starting recording...");
                this.mediaRecorder.start();
                this.waitForState(State.RECORDING).then(() => {
                    console.debug("Recording started.");
                    resolve();
                });
            }
        });
    }
    stop() {
        return new Promise((resolve, reject) => {
            if (!this.mediaRecorder) {
                console.error("MediaRecorder is not initialized.");
                reject(new Error("MediaRecorder is not initialized."));
            }
            else if (this.state !== State.RECORDING) {
                console.error("Cannot stop recording, not currently recording.");
                reject(new Error("Cannot stop recording, not currently recording."));
            }
            else {
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
    getAudioUrl() {
        return new Promise((resolve, reject) => {
            if (this.chunks.length === 0) {
                console.error("No audio data available.");
                reject(new Error("No audio data available."));
            }
            else {
                const audioBlob = new Blob(this.chunks, { type: "audio/mp4" });
                this.chunks = []; // Clear chunks after creating the blob
                const audioUrl = window.URL.createObjectURL(audioBlob);
                console.debug(`Audio URL created: ${audioUrl}`);
                resolve(audioUrl);
            }
        });
    }
}
class NoopRecorderDevice {
    start() {
        return Promise.resolve();
    }
    stop() {
        return Promise.resolve("");
    }
}
class PlaybackSpeedControls {
    constructor() {
        var _a, _b, _c;
        this.numerator = 1;
        this.denominator = 4;
        this.valueInput = document.getElementById("playback");
        this.minusButtom = document.getElementById("playback-minus");
        this.plusButton = document.getElementById("playback-plus");
        (_a = this.valueInput) === null || _a === void 0 ? void 0 : _a.addEventListener("change", this.setValue.bind(this));
        (_b = this.minusButtom) === null || _b === void 0 ? void 0 : _b.addEventListener("click", this.minus.bind(this));
        (_c = this.plusButton) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.plus.bind(this));
        this.updateValueInput();
    }
    value() {
        return this.numerator / this.denominator;
    }
    updateValueInput() {
        if (this.valueInput) {
            this.valueInput.value = this.denominator === 1 ? this.numerator.toString() : `${this.numerator} / ${this.denominator}`;
            console.log(`Playback speed set to ${this.value()}x`);
        }
    }
    setValue(event) {
        if (!(event.target instanceof HTMLInputElement)) {
            console.error("Invalid target for playback speed input.");
            return;
        }
        const inputValue = event.target.value.trim();
        const parts = inputValue.split("/").map(part => part.trim());
        if (parts.length === 1) {
            this.numerator = parseInt(parts[0], 10);
            this.denominator = 1;
        }
        else if (parts.length === 2) {
            this.numerator = parseInt(parts[0], 10);
            this.denominator = parseInt(parts[1], 10);
        }
        else {
            console.error("Invalid playback speed format. Use 'numerator' or 'numerator / denominator'.");
            return;
        }
        if (this.denominator <= 0) {
            console.error("Denominator must be greater than zero.");
            this.denominator = 1; // Reset to a valid state
        }
        if (this.value() <= 0) {
            console.error("Playback speed must be greater than zero.");
            this.numerator = Math.abs(this.numerator);
            this.denominator = Math.abs(this.denominator);
        }
        this.updateValueInput();
    }
    minus() {
        if (this.numerator === 1) {
            this.denominator++;
        }
        else {
            this.numerator--;
        }
        this.updateValueInput();
    }
    plus() {
        if (this.denominator === 1) {
            this.numerator++;
        }
        else {
            this.denominator--;
        }
        this.updateValueInput();
    }
}
class RecorderController {
    constructor(recorder) {
        var _a, _b, _c, _d;
        this.recorder = new NoopRecorderDevice();
        this.playbackSpeed = new PlaybackSpeedControls();
        this.audioUrl = "";
        this.audioElem = new Audio();
        this.recordIcon = document.getElementById("record");
        this.recordingIcon = document.getElementById("recording");
        this.playIcon = document.getElementById("play");
        this.playingIcon = document.getElementById("playing");
        this.recorder = recorder;
        (_a = this.recordIcon) === null || _a === void 0 ? void 0 : _a.addEventListener("click", this.record.bind(this));
        (_b = this.recordingIcon) === null || _b === void 0 ? void 0 : _b.addEventListener("click", this.stopRecording.bind(this));
        (_c = this.playIcon) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.play.bind(this));
        (_d = this.playingIcon) === null || _d === void 0 ? void 0 : _d.addEventListener("click", this.stopPlaying.bind(this));
        this.showControls([this.recordIcon]);
    }
    record() {
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
    stopRecording() {
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
    play() {
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
    stopPlaying() {
        console.debug("Stopping playback.");
        this.audioElem.pause();
        console.debug("Playback stopped.");
        this.showControls([this.playIcon, this.recordIcon]);
    }
    showControls(activeIcons) {
        [this.recordIcon, this.recordingIcon, this.playIcon, this.playingIcon].forEach(icon => {
            if (icon) {
                icon.style.display = (activeIcons.includes(icon)) ? "inline-block" : "none";
            }
        });
    }
}
const recorder = new BrowserRecorderDevice();
const controller = new RecorderController(recorder);
