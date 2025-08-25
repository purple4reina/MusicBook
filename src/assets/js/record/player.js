export default class PlayerDevice {
    constructor(audioContext) {
        this.sourceNode = null;
        this.isPlaying = false;
        this.playbackRate = 1.0;
        this.onEndedCallback = null;
        this.startTime = 0;
        this.audioContext = audioContext;
        this.gainNode = audioContext.createGain();
        this.gainNode.connect(audioContext.destination);
    }
    play(buffer, playbackRate = 1.0, onEnded) {
        this.stop(); // Stop any current playback
        this.sourceNode = this.audioContext.createBufferSource();
        this.sourceNode.buffer = buffer;
        this.sourceNode.playbackRate.value = playbackRate;
        this.sourceNode.connect(this.gainNode);
        this.playbackRate = playbackRate;
        this.onEndedCallback = onEnded || null;
        this.sourceNode.onended = () => {
            this.isPlaying = false;
            if (this.onEndedCallback) {
                this.onEndedCallback();
            }
        };
        const startTime = this.audioContext.currentTime;
        this.startTime = startTime;
        this.sourceNode.start(startTime);
        this.isPlaying = true;
        return startTime;
    }
    stop() {
        if (this.sourceNode && this.isPlaying) {
            this.sourceNode.stop();
            this.sourceNode.disconnect();
            this.sourceNode = null;
            this.isPlaying = false;
        }
    }
}
