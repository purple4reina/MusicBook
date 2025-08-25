class PlusMinusControls {
    constructor(name, opts) {
        var _a, _b, _c;
        this._value = 0;
        this.valueInput = null;
        this.minusButton = null;
        this.plusButton = null;
        this.minValue = 0;
        this.maxValue = 0;
        this._value = opts.initial;
        this.minValue = opts.min;
        this.maxValue = opts.max;
        this.valueInput = document.getElementById(`${name}-val`);
        this.minusButton = document.getElementById(`${name}-minus`);
        this.plusButton = document.getElementById(`${name}-plus`);
        (_a = this.valueInput) === null || _a === void 0 ? void 0 : _a.addEventListener("change", this.setVal.bind(this));
        (_b = this.minusButton) === null || _b === void 0 ? void 0 : _b.addEventListener("click", this.minusVal.bind(this));
        (_c = this.plusButton) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.plusVal.bind(this));
        this.updateValueInputs();
    }
    value() {
        return this._value;
    }
    setVal(event) {
        const val = this.parseValue(event.target);
        this._value = val !== null ? val : this._value;
        this.updateValueInputs();
    }
    minusVal() {
        this._value--;
        this.updateValueInputs();
    }
    plusVal() {
        this._value++;
        this.updateValueInputs();
    }
    updateValueInputs() {
        this._value = Math.max(this.minValue, Math.min(this.maxValue, this._value));
        if (this.valueInput) {
            this.valueInput.value = this._value.toString();
        }
    }
    parseValue(target) {
        if (!(target instanceof HTMLInputElement)) {
            console.error("Invalid target for input.");
            return null;
        }
        const value = parseInt(target.value.trim(), 10);
        if (isNaN(value)) {
            console.error("Value must be a valid integer.");
            return null;
        }
        return value;
    }
}
export default function plusMinusControls(name, opts) {
    const c = new PlusMinusControls(name, opts);
    return c.value.bind(c);
}
