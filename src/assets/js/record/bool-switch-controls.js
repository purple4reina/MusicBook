class BoolSwitchControls {
    constructor(name, opts) {
        var _a;
        this._value = (opts === null || opts === void 0 ? void 0 : opts.initial) || false;
        (_a = document.getElementById(name)) === null || _a === void 0 ? void 0 : _a.addEventListener("click", this.changeValue.bind(this));
    }
    value() {
        return this._value;
    }
    changeValue(event) {
        this._value = event.target.checked;
    }
}
export default function boolSwitchControls(name, opts) {
    const c = new BoolSwitchControls(name, opts);
    return c.value.bind(c);
}
