/**

Math object has no constructor thus you cannot create instances of it. Consider Math as a namespace - collection of static methods and constants.
@class Math
@module core
*/
class Math
{

    /**
    e - Euler's constant, the base of natural logarithms.
    @property E
    @type {Float}
    @readOnly
    */
    property E() { }

    /**
    Value of natural logarithm of 2.
    @property LN2
    @type {Float}
    @readOnly
    */
    property LN2() { }

    /**
    Value of natural logarithm of 10.
    @property LN10
    @type {Float}
    @readOnly
    */
    property LN10() { }

    /**
    Value of base 10 logarithm of e constant.
    @property LOG10E
    @type {Float}
    @readOnly
    */
    property LOG10E() { }

    /**
    Pi constant - the ratio of the circumference of a circle to its diameter.
    @property PI
    @type {Float}
    @readOnly
    */
    property PI() { }

    /**
    Value of square root of 0.5.
    @property SQRT1_2
    @type {Float}
    @readOnly
    */
    property SQRT1_2() { }

    /**
    Value of square root of 2.0.
    @property SQRT2
    @type {Float}
    @readOnly
    */
    property SQRT2() { }

    /**
    Calculates abs (positive) value of integer or float argument.
    @method abs
    @param number {Float|Integer} Number to calculate abs value.
    @return {Float|Integer} Absolute (positive) Value number.
    */
    function abs(number) { }

    /**
    Calculates value of sine function for angle in parameter.
    @method sign
    @param angle {Float|Integer} Angle to the sine
    @return {Float|Integer} Absolute (positive) Sine of angle.
    */
    function sign(angle) { }

    /**
    Calculates value of cosine function for angle in parameter.
    @method cos
    @param angle {Float|Integer} Angle to calculate the cosine
    @return {Float|Integer} Absolute (positive) Cosine of angle.
    */
    function cos(angle) { }

    /**
    Calculates value of tanget function for angle in parameter.
    @method tan
    @param angle {Float|Integer} Angle to the tangent
    @return {Float|Integer} Tangent of angle.
    */
    function tan(angle) { }

    /**
    Calculates arcsine of its argument.
    @method asin
    @param angle {Float|Integer} Value to calculate arcsine.
    @return {Float|Integer} Arcsine of argument.
    */
    function asin(number) { }

    /**
    Calculates arccosine of its argument.
    @method acos
    @param angle {Float|Integer} Value to calculate arccosine.
    @return {Float|Integer} Arccosine of argument.
    */
    function acos(angle) { }

    /**
    Returns arctangent if its arguments.
    @method atan
    @param number {Float|Integer} Value to calculate arccosine.
    @param [number]* {Float|Integer} Value to calculate arccosine.
    @return {Float|Integer} Returns arctangent if its arguments.
    */
    function atan(number [, number] ) { }

    /**
    Returns the square root of the argument.
    @method sqrt
    @param number {Float|Integer} Number to calculate the square root.
    @return {Float|Integer} The square root of the argument.
    */
    function sqrt(number) { }

    /**
    Rounds a number up - returns the smallest integer greater than or equal to the argument.
    @method ceil
    @param number {Float|Integer} Number to round.
    @return {Float|Integer} The smallest integer greater than or equal to the argument.
    @example
            var a = Math.ceil(1.5); // return 2
    */
    function ceil(number) { }

    /**
    Mathematically rounds a number.
    @method round
    @param number {Float} Float number to round
    @return {Integer} Rounded number
    @example
            Math.round(1.5); // returns 2
            Math.round(1.4); // returns 1
    */
    function round(number) { }


    /**
    Returns the exponential value of the argument, if successful.
    On overflow, the function returns INF (infinite) and on underflow, exp returns 0.0. To test number on infinity use {{#crossLink "Float/isFinite"}}{{/crossLink}} method.
    @method exp
    @param number {Float|Integer} Number to round.
    @return {Float|Integer} The smallest integer greater than or equal to the argument.
    */
    function exp(number) { }

    /**
    Calculate natural logarithms of the argument. If argument is negative, these functions throws an exception.
    @method log
    @param number {Float|Integer} Number.
    @return {Float} Natural logarithms of the number in argument.
    */
    function log(number) { }

    /**
    The log functions return base-2 logarithms of the argument if successful. If argument is negative, these functions throws an exception.
    @method log2
    @param number {Float|Integer} Number.
    @return {Float} 10-based logarithms of the number in argument.
    */
    function log2(number) { }

    /**
    The log functions return common (base-10) logarithm of the argument if successful. If argument is negative, these functions throws an exception.
    @method log10
    @param number {Float|Integer} Number.
    @return {Float} 2-based logarithms of the number in argument.
    */
    function log10(number) { }

    /**
    Calculates number raised to the power of exponent: result = number^exponent;
    @method pow
    @param number {Float} Number.
    @param number {Float} exponent.
    @return {Float} Number raised to the power of exponent.
    */
    function pow(number, exponent) { }

}