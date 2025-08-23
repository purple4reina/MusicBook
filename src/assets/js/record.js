"use strict";
var State;
(function (State) {
    State["UNKNOWN"] = "unknown";
    State["RECORDING"] = "recording";
    State["STOPPED"] = "stopped";
    State["PLAYING"] = "playing";
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
        var _a, _b, _c, _d;
        this.numerator = 1;
        this.denominator = 4;
        this.numerValueInput = document.getElementById("playback-numer");
        this.denomValueInput = document.getElementById("playback-denom");
        this.minusButtom = document.getElementById("playback-minus");
        this.plusButton = document.getElementById("playback-plus");
        (_a = this.numerValueInput) === null || _a === void 0 ? void 0 : _a.addEventListener("change", this.setNumerator.bind(this));
        (_b = this.denomValueInput) === null || _b === void 0 ? void 0 : _b.addEventListener("change", this.setDenominator.bind(this));
        (_c = this.minusButtom) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.minus.bind(this));
        (_d = this.plusButton) === null || _d === void 0 ? void 0 : _d.addEventListener("click", this.plus.bind(this));
        this.updateValueInput();
    }
    value() {
        return this.numerator / this.denominator;
    }
    updateValueInput() {
        if (this.numerValueInput) {
            this.numerValueInput.value = this.numerator.toString();
        }
        if (this.denomValueInput) {
            this.denomValueInput.value = this.denominator.toString();
        }
        console.debug(`Playback speed set to ${this.value()}x`);
    }
    setNumerator(event) {
        this.numerator = this.parseValue(event.target) || this.numerator;
        this.updateValueInput();
    }
    setDenominator(event) {
        this.denominator = this.parseValue(event.target) || this.denominator;
        this.updateValueInput();
    }
    parseValue(target) {
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
class MetronomePlayer {
    constructor() {
        this.clickFrequency = 1000; // Frequency of the click sound in Hz
        this.clickType = "sine"; // sine, square, sawtooth, or triangle wave
        this.isPlaying = false;
        this.tempo = 60;
        this.nextClickTime = 0;
        this.audioContext = new AudioContext();
    }
    createClickSound() {
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
    scheduleClick() {
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
    startMetronome(tempo) {
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
    constructor() {
        var _a, _b, _c, _d;
        this.enabled = false;
        this.bpm = 60;
        this.metronomePlayer = new MetronomePlayer();
        this.clickEnabledCheckbox = document.getElementById("click-enabled");
        this.bpmValueInput = document.getElementById("bpm-val");
        this.bpmMinusButtom = document.getElementById("bpm-minus");
        this.bpmPlusButton = document.getElementById("bpm-plus");
        this.minBpm = 15;
        this.maxBpm = 300;
        (_a = this.clickEnabledCheckbox) === null || _a === void 0 ? void 0 : _a.addEventListener("change", this.enableMetronome.bind(this));
        (_b = this.bpmValueInput) === null || _b === void 0 ? void 0 : _b.addEventListener("change", this.setBpm.bind(this));
        (_c = this.bpmMinusButtom) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.minusBpm.bind(this));
        (_d = this.bpmPlusButton) === null || _d === void 0 ? void 0 : _d.addEventListener("click", this.plusBpm.bind(this));
        this.updateValueInputs();
    }
    play(playbackSpeed) {
        if (!this.enabled) {
            return;
        }
        console.debug(`Starting click track at ${this.bpm} BPM at ${playbackSpeed}x speed.`);
        this.metronomePlayer.startMetronome(this.bpm * playbackSpeed);
    }
    stop() {
        if (!this.enabled) {
            return;
        }
        console.debug("Stopping click track.");
        this.metronomePlayer.stopMetronome();
    }
    enableMetronome(event) {
        this.enabled = event.target.checked;
        this.updateValueInputs();
    }
    setBpm(event) {
        const val = this.parseValue(event.target);
        this.bpm = val !== null ? val : this.bpm;
        this.updateValueInputs();
    }
    parseValue(target) {
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
    minusBpm() {
        this.bpm--;
        this.updateValueInputs();
    }
    plusBpm() {
        this.bpm++;
        this.updateValueInputs();
    }
    updateValueInputs() {
        this.bpm = Math.max(this.minBpm, Math.min(this.maxBpm, this.bpm));
        this.bpmValueInput.value = this.bpm.toString();
        console.debug(`Metronome settings: Enabled=${this.enabled}, BPM=${this.bpm}.`);
    }
}
class RecorderController {
    constructor(recorder) {
        var _a, _b, _c, _d;
        this.state = State.STOPPED;
        this.nextState = State.RECORDING;
        this.recorder = new NoopRecorderDevice();
        this.playbackSpeed = new PlaybackSpeedControls();
        this.metronome = new MetronomeControls();
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
        document.addEventListener("keydown", (e) => {
            if (e.key === " ") {
                e.preventDefault(); // Prevent default spacebar behavior (scrolling)
                if (this.state === State.RECORDING) {
                    this.stopRecording();
                }
                else if (this.state === State.PLAYING) {
                    this.stopPlaying();
                }
                else if (this.state === State.STOPPED) {
                    if (this.nextState === State.RECORDING) {
                        this.record();
                    }
                    else if (this.nextState === State.PLAYING) {
                        this.play();
                    }
                }
            }
            else if (e.key === "ArrowRight") {
                e.preventDefault(); // Prevent default behavior
                this.playbackSpeed.plus();
            }
            else if (e.key === "ArrowLeft") {
                e.preventDefault(); // Prevent default behavior
                this.playbackSpeed.minus();
            }
        });
        this.showControls([this.recordIcon]);
    }
    record() {
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
    stopRecording() {
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
    play() {
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
    stopPlaying() {
        console.debug("Stopping playback.");
        this.audioElem.pause();
        this.metronome.stop();
        console.debug("Playback stopped.");
        this.showControls([this.playIcon, this.recordIcon]);
        this.state = State.STOPPED;
        this.nextState = State.RECORDING;
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
