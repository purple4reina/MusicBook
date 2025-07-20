"use strict";
var State;
(function (State) {
    State["UNKNOWN"] = "unknown";
    State["RECORDING"] = "recording";
    State["STOPPED"] = "stopped";
})(State || (State = {}));
class BrowserRecorderDevice {
    constructor() {
        this.mediaRecorder = null;
        this.state = State.UNKNOWN;
        this.chunks = [];
        navigator.mediaDevices.getUserMedia({ audio: true })
            .then(stream => {
            this.mediaRecorder = new MediaRecorder(stream);
            this.mediaRecorder.onstart = this.onStart.bind(this);
            this.mediaRecorder.ondataavailable = this.onDataAvailable.bind(this);
            this.mediaRecorder.onstop = this.onStop.bind(this);
            this.state = State.STOPPED;
            console.log("Microphone access granted.");
        })
            .catch(error => {
            console.error("Error accessing microphone:", error);
        });
    }
    onStart() {
        console.log("MediaRecorder started.");
        this.state = State.RECORDING;
        console.log(`State changed to: ${this.state}`);
    }
    onDataAvailable(event) {
        console.log(`Data available: ${event.data.size} bytes.`);
        this.chunks.push(event.data);
    }
    onStop() {
        console.log("MediaRecorder stopped.");
        this.state = State.STOPPED;
        console.log(`State changed to: ${this.state}`);
    }
    waitForState(targetState) {
        return new Promise(resolve => {
            const interval = setInterval(() => {
                if (this.state === targetState) {
                    clearInterval(interval);
                    resolve();
                }
                else {
                    console.log(`Waiting for state to change to ${targetState}...`);
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
                console.log("Starting recording...");
                this.mediaRecorder.start();
                this.waitForState(State.RECORDING).then(() => {
                    console.log("Recording started.");
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
    getAudioUrl() {
        return new Promise((resolve, reject) => {
            if (this.chunks.length === 0) {
                console.error("No audio data available.");
                reject(new Error("No audio data available."));
            }
            else {
                const audioBlob = new Blob(this.chunks, { type: 'audio/webm' });
                this.chunks = []; // Clear chunks after creating the blob
                const audioUrl = window.URL.createObjectURL(audioBlob);
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
class BrowserPlayerDevice {
    constructor() {
        this.audioElem = new Audio();
    }
    start(audioUrl, playbackSpeed, stopCallback) {
        this.audioElem = new Audio();
        this.audioElem.src = audioUrl;
        this.audioElem.playbackRate = playbackSpeed;
        this.audioElem.onended = stopCallback;
        this.audioElem.play()
            .then(() => {
            console.log("Playback started.");
        })
            .catch(error => {
            console.error("Error starting playback:", error);
        });
    }
    stop() {
        this.audioElem.pause();
    }
}
class NoopPlayerDevice {
    start() { }
    stop() { }
}
class RecorderController {
    constructor(recorder, player) {
        var _a, _b, _c, _d;
        this.recorder = new NoopRecorderDevice();
        this.player = new NoopPlayerDevice();
        this.playbackSpeed = 1 / 4;
        this.audioUrl = "";
        this.recordIcon = document.getElementById("record");
        this.recordingIcon = document.getElementById("recording");
        this.playIcon = document.getElementById("play");
        this.playingIcon = document.getElementById("playing");
        this.recorder = recorder;
        this.player = player;
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
        this.player.start(this.audioUrl, this.playbackSpeed, this.stopPlaying.bind(this));
        this.showControls([this.playingIcon]);
    }
    stopPlaying() {
        this.player.stop();
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
const player = new BrowserPlayerDevice();
const controller = new RecorderController(recorder, player);
