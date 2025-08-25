class FractionControls {
    constructor(name, opts) {
        var _a, _b, _c, _d;
        this.numerator = 1;
        this.denominator = 4;
        this._value = this.numerator / this.denominator;
        this.numerValueInput = null;
        this.denomValueInput = null;
        this.minusButtom = null;
        this.plusButton = null;
        this.numerator = opts.initNum;
        this.denominator = opts.initDen;
        this.numerValueInput = document.getElementById(`${name}-numer`);
        this.denomValueInput = document.getElementById(`${name}-denom`);
        this.minusButtom = document.getElementById(`${name}-minus`);
        this.plusButton = document.getElementById(`${name}-plus`);
        (_a = this.numerValueInput) === null || _a === void 0 ? void 0 : _a.addEventListener("change", this.setNumerator.bind(this));
        (_b = this.denomValueInput) === null || _b === void 0 ? void 0 : _b.addEventListener("change", this.setDenominator.bind(this));
        (_c = this.minusButtom) === null || _c === void 0 ? void 0 : _c.addEventListener("click", this.minus.bind(this));
        (_d = this.plusButton) === null || _d === void 0 ? void 0 : _d.addEventListener("click", this.plus.bind(this));
        if (opts.arrowKeys) {
            document.addEventListener("keydown", (e) => {
                if (e.key === "ArrowRight") {
                    e.preventDefault();
                    this.plus();
                }
                else if (e.key === "ArrowLeft") {
                    e.preventDefault();
                    this.minus();
                }
            });
        }
        this.updateValueInput();
    }
    value() {
        return this._value;
    }
    updateValueInput() {
        if (this.numerValueInput) {
            this.numerValueInput.value = this.numerator.toString();
        }
        if (this.denomValueInput) {
            this.denomValueInput.value = this.denominator.toString();
        }
        this._value = this.numerator / this.denominator;
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
            return 0;
        }
        const value = parseInt(target.value.trim(), 10);
        if (isNaN(value) || value <= 0) {
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
export default function fractionControls(name, opts) {
    const c = new FractionControls(name, opts);
    return c.value.bind(c);
}
