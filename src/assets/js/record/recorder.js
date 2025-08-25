var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { State } from "./state.js";
export default class RecorderDevice {
    constructor(audioContext) {
        this.stream = null;
        this.sourceNode = null;
        this.recordingNode = null;
        this.state = State.UNKNOWN;
        this.recordedBuffer = null;
        this.recordingData = [];
        this.sampleRate = 44100;
        this.maxRecordingLength = 300; // 5 minutes max
        this.audioContext = audioContext;
        this.sampleRate = audioContext.sampleRate;
    }
    initialize() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                // Get user media
                this.stream = yield navigator.mediaDevices.getUserMedia({
                    audio: {
                        echoCancellation: false,
                        noiseSuppression: false,
                        autoGainControl: false,
                        sampleRate: this.sampleRate
                    }
                });
                // Create source node
                this.sourceNode = this.audioContext.createMediaStreamSource(this.stream);
                // Try to register AudioWorklet, fallback to ScriptProcessor
                try {
                    yield this.audioContext.audioWorklet.addModule(this.getRecorderWorkletCode());
                    this.recordingNode = new AudioWorkletNode(this.audioContext, "recorder-worklet");
                    this.setupWorkletRecording();
                }
                catch (error) {
                    console.warn("AudioWorklet not supported, falling back to ScriptProcessorNode");
                    this.setupScriptProcessorRecording();
                }
                this.state = State.STOPPED;
            }
            catch (error) {
                console.error("Error initializing Web Audio recorder:", error);
                throw error;
            }
        });
    }
    getRecorderWorkletCode() {
        // Create a blob URL for the AudioWorklet processor
        const workletCode = `
      class RecorderWorklet extends AudioWorkletProcessor {
        constructor() {
          super();
          this.isRecording = false;
          this.port.onmessage = (event) => {
            if (event.data.command === "start") {
              this.isRecording = true;
            } else if (event.data.command === "stop") {
              this.isRecording = false;
            }
          };
        }

        process(inputs, outputs) {
          if (this.isRecording && inputs[0] && inputs[0][0]) {
            // Send audio data to main thread
            this.port.postMessage({
              type: "audiodata",
              audioData: inputs[0][0].slice() // Copy the audio data
            });
          }
          return true;
        }
      }
      registerProcessor("recorder-worklet", RecorderWorklet);
    `;
        const blob = new Blob([workletCode], { type: "application/javascript" });
        return URL.createObjectURL(blob);
    }
    setupWorkletRecording() {
        if (!this.recordingNode)
            return;
        this.recordingNode.port.onmessage = (event) => {
            if (event.data.type === "audiodata") {
                this.recordingData.push(new Float32Array(event.data.audioData));
                // Prevent memory overflow
                if (this.recordingData.length > this.maxRecordingLength * this.sampleRate / 128) {
                    console.warn("Maximum recording length reached");
                    this.stop();
                }
            }
        };
    }
    setupScriptProcessorRecording() {
        // Fallback to ScriptProcessorNode (deprecated but widely supported)
        const bufferSize = 4096;
        const scriptNode = this.audioContext.createScriptProcessor(bufferSize, 1, 1);
        scriptNode.onaudioprocess = (event) => {
            if (this.state === State.RECORDING) {
                const inputData = event.inputBuffer.getChannelData(0);
                this.recordingData.push(new Float32Array(inputData));
                // Prevent memory overflow
                if (this.recordingData.length > this.maxRecordingLength * this.sampleRate / bufferSize) {
                    console.warn("Maximum recording length reached");
                    this.stop();
                }
            }
        };
        this.recordingNode = scriptNode; // Type hack for compatibility
    }
    start() {
        if (this.state !== State.STOPPED) {
            console.error("Recorder is not in a stopped state, cannot start recording");
            return;
        }
        try {
            // Clear previous recording
            this.recordingData = [];
            // Connect the audio graph
            if (this.sourceNode && this.recordingNode) {
                this.sourceNode.connect(this.recordingNode);
                // For ScriptProcessorNode, we need to connect to destination
                if (this.recordingNode instanceof ScriptProcessorNode) {
                    this.recordingNode.connect(this.audioContext.destination);
                }
            }
            // Start recording
            this.state = State.RECORDING;
            if (this.recordingNode instanceof AudioWorkletNode) {
                this.recordingNode.port.postMessage({ command: "start" });
            }
        }
        catch (error) {
            console.error("Error starting recording:", error);
        }
    }
    stop() {
        if (this.state !== State.RECORDING) {
            console.error("Recorder is not in a recording state, cannot stop recording");
            return;
        }
        try {
            // Stop recording
            this.state = State.STOPPED;
            if (this.recordingNode instanceof AudioWorkletNode) {
                this.recordingNode.port.postMessage({ command: "stop" });
            }
            // Disconnect audio graph
            if (this.sourceNode && this.recordingNode) {
                this.sourceNode.disconnect(this.recordingNode);
                if (this.recordingNode instanceof ScriptProcessorNode) {
                    this.recordingNode.disconnect();
                }
            }
            // Process recorded data
            this.processRecordedData();
        }
        catch (error) {
            console.error("Error stopping recording:", error);
        }
    }
    processRecordedData() {
        if (this.recordingData.length === 0) {
            console.warn("No audio data recorded");
            return;
        }
        // Calculate total length
        const totalLength = this.recordingData.reduce((sum, chunk) => sum + chunk.length, 0);
        // Create AudioBuffer
        this.recordedBuffer = this.audioContext.createBuffer(1, totalLength, this.sampleRate);
        const channelData = this.recordedBuffer.getChannelData(0);
        // Copy data into buffer
        let offset = 0;
        for (const chunk of this.recordingData) {
            channelData.set(chunk, offset);
            offset += chunk.length;
        }
    }
    getAudioBuffer() {
        return this.recordedBuffer;
    }
    reset() {
        if (this.state === State.RECORDING) {
            this.stop();
        }
        if (this.stream && this.sourceNode) {
            try {
                this.sourceNode = this.audioContext.createMediaStreamSource(this.stream);
                if (this.recordingNode instanceof AudioWorkletNode) {
                    this.recordingNode = new AudioWorkletNode(this.audioContext, "recorder-worklet");
                    this.setupWorkletRecording();
                }
                else {
                    this.setupScriptProcessorRecording();
                }
                this.state = State.STOPPED;
            }
            catch (error) {
                console.error("Error resetting recorder:", error);
            }
        }
    }
}
