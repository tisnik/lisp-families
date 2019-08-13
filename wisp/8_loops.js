(function loop() {
    var recur = loop;
    var iø1 = 0;
    do {
        recur = iø1 == 10 ? sum : (loop[0] = iø1 + 1, loop);
    } while (iø1 = loop[0], recur === loop);
    return recur;
}.call(this));
(function loop() {
    var recur = loop;
    var iø1 = 0;
    var sumø1 = 1;
    do {
        recur = iø1 == 10 ? sumø1 : (loop[0] = iø1 + 1, loop[1] = sumø1 * 2, loop);
    } while (iø1 = loop[0], sumø1 = loop[1], recur === loop);
    return recur;
}.call(this));
var pow2 = exports.pow2 = function pow2(n) {
    return function loop() {
        var recur = loop;
        var iø1 = 0;
        var sumø1 = 1;
        do {
            recur = iø1 == n ? sumø1 : (loop[0] = iø1 + 1, loop[1] = sumø1 * 2, loop);
        } while (iø1 = loop[0], sumø1 = loop[1], recur === loop);
        return recur;
    }.call(this);
};
var array = exports.array = [
    1,
    2,
    3,
    4,
    5
];
(function loop() {
    var recur = loop;
    var iø1 = 0;
    var sumø1 = 0;
    do {
        recur = iø1 == 5 ? sumø1 : (loop[0] = iø1 + 1, loop[1] = sumø1 + (array || 0)[iø1], loop);
    } while (iø1 = loop[0], sumø1 = loop[1], recur === loop);
    return recur;
}.call(this));
var power = exports.power = function power() {
    switch (arguments.length) {
    case 2:
        var x = arguments[0];
        var y = arguments[1];
        return power(x, y, 1);
    case 3:
        var x = arguments[0];
        var y = arguments[1];
        var current = arguments[2];
        return y == 0 ? current : y > 0 ? (loop[0] = x, loop[1] = y - 1, loop[2] = x * current, loop) : (loop[0] = x, loop[1] = y + 1, loop[2] = current / x, loop);
    default:
        throw RangeError('Wrong number of arguments passed');
    }
};
var power2 = exports.power2 = function power2(x, y) {
    return function loop() {
        var recur = loop;
        var exponentø1 = y;
        var currentø1 = 1;
        do {
            recur = exponentø1 == 0 ? currentø1 : exponentø1 > 0 ? (loop[0] = exponentø1 - 1, loop[1] = x * currentø1, loop) : (loop[0] = exponentø1 + 1, loop[1] = currentø1 / x, loop);
        } while (exponentø1 = loop[0], currentø1 = loop[1], recur === loop);
        return recur;
    }.call(this);
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFub255bW91cy53aXNwIl0sIm5hbWVzIjpbImnDuDEiLCJzdW0iLCJzdW3DuDEiLCJwb3cyIiwiZXhwb3J0cyIsIm4iLCJhcnJheSIsInBvd2VyIiwieCIsInkiLCJjdXJyZW50IiwicG93ZXIyIiwiZXhwb25lbnTDuDEiLCJjdXJyZW50w7gxIl0sIm1hcHBpbmdzIjoiQUFpQkEsQzs7SUFBTyxJQUFBQSxHLEdBQUUsQ0FBRixDOztnQkFDS0EsR0FBSixJQUFNLEVBQVYsR0FDSUMsR0FESixHQUVJLEMsVUFBVUQsR0FBSCxHQUFLLENBQVosRSxJQUFBLEM7YUFIREEsRzs7TUFBUCxDLElBQUE7QUFNQSxDOztJQUFPLElBQUFBLEcsR0FBRSxDQUFGLEM7SUFBSSxJQUFBRSxLLEdBQUksQ0FBSixDOztnQkFDQ0YsR0FBSixJQUFNLEVBQVYsR0FDSUUsS0FESixHQUVJLEMsVUFBVUYsR0FBSCxHQUFLLENBQVosRSxVQUFrQkUsS0FBSCxHQUFPLENBQXRCLEUsSUFBQSxDO2FBSERGLEcsWUFBSUUsSzs7TUFBWCxDLElBQUEsR0FOQTtBQVlBLElBQU1DLElBQUEsR0FBQUMsT0FBQSxDQUFBRCxJQUFBLEdBQU4sU0FBTUEsSUFBTixDQUNLRSxDQURMLEVBRUk7QUFBQSxXOztRQUFPLElBQUFMLEcsR0FBRSxDQUFGLEM7UUFBSSxJQUFBRSxLLEdBQUksQ0FBSixDOztvQkFDQ0YsR0FBSixJQUFNSyxDQUFWLEdBQ0lILEtBREosR0FFSSxDLFVBQVVGLEdBQUgsR0FBSyxDQUFaLEUsVUFBa0JFLEtBQUgsR0FBTyxDQUF0QixFLElBQUEsQztpQkFIREYsRyxZQUFJRSxLOztVQUFYLEMsSUFBQTtBQUFBLENBRkosQ0FaQTtBQW9CQSxJQUFLSSxLQUFBLEdBQUFGLE9BQUEsQ0FBQUUsS0FBQSxHQUFNO0FBQUEsSUFBQyxDQUFEO0FBQUEsSUFBRyxDQUFIO0FBQUEsSUFBSyxDQUFMO0FBQUEsSUFBTyxDQUFQO0FBQUEsSUFBUyxDQUFUO0FBQUEsQ0FBWCxDQXBCQTtBQXNCQSxDOztJQUFPLElBQUFOLEcsR0FBRSxDQUFGLEM7SUFBSSxJQUFBRSxLLEdBQUksQ0FBSixDOztnQkFDQ0YsR0FBSixJQUFNLENBQVYsR0FDSUUsS0FESixHQUVJLEMsVUFBVUYsR0FBSCxHQUFLLENBQVosRSxVQUFrQkUsS0FBSCxHLENBQVlJLEssTUFBTCxDQUFXTixHQUFYLENBQXRCLEUsSUFBQSxDO2FBSERBLEcsWUFBSUUsSzs7TUFBWCxDLElBQUEsR0F0QkE7QUE0QkEsSUFBTUssS0FBQSxHQUFBSCxPQUFBLENBQUFHLEtBQUEsR0FBTixTQUFNQSxLQUFOLEc7OztZQUNNQyxDQUFBLEc7WUFBRUMsQ0FBQSxHO1FBQ0EsT0FBQ0YsS0FBRCxDQUFPQyxDQUFQLEVBQVNDLENBQVQsRUFBVyxDQUFYLEU7O1lBQ0ZELENBQUEsRztZQUFFQyxDQUFBLEc7WUFBRUMsT0FBQSxHO1FBQ0YsT0FBUUQsQ0FBSixJQUFNLENBQVYsR0FDSUMsT0FESixHQUVXRCxDQUFILEdBQUssQ0FBVCxHQUNJLEMsVUFBT0QsQ0FBUCxFLFVBQVlDLENBQUgsR0FBSyxDQUFkLEUsVUFBb0JELENBQUgsR0FBS0UsT0FBdEIsRSxJQUFBLENBREosR0FFSSxDLFVBQU9GLENBQVAsRSxVQUFZQyxDQUFILEdBQUssQ0FBZCxFLFVBQW9CQyxPQUFILEdBQVdGLENBQTVCLEUsSUFBQSxDQUpSLEM7Ozs7Q0FKUixDQTVCQTtBQXNDQSxJQUFNRyxNQUFBLEdBQUFQLE9BQUEsQ0FBQU8sTUFBQSxHQUFOLFNBQU1BLE1BQU4sQ0FDS0gsQ0FETCxFQUNPQyxDQURQLEVBRUk7QUFBQSxXOztRQUFPLElBQUFHLFUsR0FBU0gsQ0FBVCxDO1FBQ0EsSUFBQUksUyxHQUFRLENBQVIsQzs7b0JBQ0tELFVBQUosSUFBYSxDQUFqQixHQUNJQyxTQURKLEdBRVdELFVBQUgsR0FBWSxDQUFoQixHQUNJLEMsVUFBVUEsVUFBSCxHQUFZLENBQW5CLEUsVUFBeUJKLENBQUgsR0FBS0ssU0FBM0IsRSxJQUFBLENBREosR0FFSSxDLFVBQVVELFVBQUgsR0FBWSxDQUFuQixFLFVBQXlCQyxTQUFILEdBQVdMLENBQWpDLEUsSUFBQSxDO2lCQU5MSSxVLFlBQ0FDLFM7O1VBRFAsQyxJQUFBO0FBQUEsQ0FGSiIsInNvdXJjZXNDb250ZW50IjpbIjsgRXhhbXBsZXMgZm9yIFdpc3A6IEhvbW9pY29uaWMgSlMgd2l0aCBjbG9qdXJlIHN5bnRheCwgcy1leHByZXNzaW9ucyAmIG1hY3Jvc1xuO1xuOyAgKEMpIENvcHlyaWdodCAyMDE1ICBQYXZlbCBUaXNub3Zza3lcbjtcbjsgIEFsbCByaWdodHMgcmVzZXJ2ZWQuIFRoaXMgcHJvZ3JhbSBhbmQgdGhlIGFjY29tcGFueWluZyBtYXRlcmlhbHNcbjsgIGFyZSBtYWRlIGF2YWlsYWJsZSB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEVjbGlwc2UgUHVibGljIExpY2Vuc2UgdjEuMFxuOyAgd2hpY2ggYWNjb21wYW5pZXMgdGhpcyBkaXN0cmlidXRpb24sIGFuZCBpcyBhdmFpbGFibGUgYXRcbjsgIGh0dHA6Ly93d3cuZWNsaXBzZS5vcmcvbGVnYWwvZXBsLXYxMC5odG1sXG47XG47ICBDb250cmlidXRvcnM6XG47IMKgwqDCoMKgIFBhdmVsIFRpc25vdnNreVxuO1xuXG47IFRlc3QgcMWZZWtsYWR1IHByb2dyYW1vdsO9Y2ggc215xI1layBkbyBKYXZhU2NyaXB0dVxuXG5cbjsgcG/EjWl0YWRsbyBvZCAwIGRvIDEwXG4obG9vcCBbaSAwXVxuICAgIChpZiAoPT0gaSAxMCkgICAgICAgICAgOyBwb2Rtw61ua2EgcHJvIHVrb27EjWVuw60gc215xI1reVxuICAgICAgICBzdW0gICAgICAgICAgICAgICAgOyBuw6F2cmF0b3bDoSBob2Rub3RhIHDFmWkgc3BsbsSbbsOtIHBvZG3DrW5reVxuICAgICAgICAocmVjdXIgKCsgaSAxKSkpKSAgOyByZWt1cnplIChzIFRDTylcblxuOyB2w71wb8SNZXQgZGVzw6F0w6kgbW9jbmlueSBkdm9qa3lcbihsb29wIFtpIDAgc3VtIDFdXG4gICAgKGlmICg9PSBpIDEwKSAgICAgICAgICA7IHBvZG3DrW5rYSBwcm8gdWtvbsSNZW7DrSBzbXnEjWt5XG4gICAgICAgIHN1bSAgICAgICAgICAgICAgICA7IG7DoXZyYXRvdsOhIGhvZG5vdGEgcMWZaSBzcGxuxJtuw60gcG9kbcOtbmt5XG4gICAgICAgIChyZWN1ciAoKyBpIDEpICgqIHN1bSAyKSkpKSAgOyByZWt1cnplIChzIFRDTylcblxuOyBmdW5rY2UgcHJvIHbDvXBvxI1ldCBuLXTDqSBtb2NuaW55IGR2b2preVxuKGRlZm4gcG93MlxuICAgIFtuXVxuICAgIChsb29wIFtpIDAgc3VtIDFdXG4gICAgICAgIChpZiAoPT0gaSBuKSAgICAgICA7IHBvZG3DrW5rYSBwcm8gdWtvbsSNZW7DrSBzbXnEjWt5XG4gICAgICAgICAgICBzdW0gICAgICAgICAgICA7IG7DoXZyYXRvdsOhIGhvZG5vdGEgcMWZaSBzcGxuxJtuw60gcG9kbcOtbmt5XG4gICAgICAgICAgICAocmVjdXIgKCsgaSAxKSAoKiBzdW0gMikpKSkpICA7IHJla3VyemUgKHMgVENPKVxuXG47IHDFmcOta2xhZCBwcm8gdsO9cG/EjWV0IHN1bXkgcG9sZVxuKGRlZiBhcnJheSBbMSAyIDMgNCA1XSlcblxuKGxvb3AgW2kgMCBzdW0gMF1cbiAgICAoaWYgKD09IGkgNSkgICAgICAgICAgIDsgcG9kbcOtbmthIHBybyB1a29uxI1lbsOtIHNtecSNa3lcbiAgICAgICAgc3VtICAgICAgICAgICAgICAgIDsgbsOhdnJhdG92w6EgaG9kbm90YSBwxZlpIHNwbG7Em27DrSBwb2Rtw61ua3lcbiAgICAgICAgKHJlY3VyICgrIGkgMSkgKCsgc3VtIChnZXQgYXJyYXkgaSkgKSkpKSAgOyByZWt1cnplIChzIFRDTylcblxuOyBleHBsaWNpdG7DrSBUQ08/XG4oZGVmbiBwb3dlclxuICAgIChbeCB5XVxuICAgICAgICAocG93ZXIgeCB5IDEpKVxuICAgIChbeCB5IGN1cnJlbnRdXG4gICAgICAgIChpZiAoPT0geSAwKVxuICAgICAgICAgICAgY3VycmVudFxuICAgICAgICAgICAgKGlmICg+IHkgMClcbiAgICAgICAgICAgICAgICAocmVjdXIgeCAoLSB5IDEpICgqIHggY3VycmVudCkpXG4gICAgICAgICAgICAgICAgKHJlY3VyIHggKCsgeSAxKSAoLyBjdXJyZW50IHgpKSkpKSlcblxuKGRlZm4gcG93ZXIyXG4gICAgW3ggeV1cbiAgICAobG9vcCBbZXhwb25lbnQgeVxuICAgICAgICAgICBjdXJyZW50IDEuMF1cbiAgICAgICAgKGlmICg9PSBleHBvbmVudCAwKVxuICAgICAgICAgICAgY3VycmVudFxuICAgICAgICAgICAgKGlmICg+IGV4cG9uZW50IDApXG4gICAgICAgICAgICAgICAgKHJlY3VyICgtIGV4cG9uZW50IDEpICgqIHggY3VycmVudCkpXG4gICAgICAgICAgICAgICAgKHJlY3VyICgrIGV4cG9uZW50IDEpICgvIGN1cnJlbnQgeCkpKSkpKVxuXG4iXX0=
