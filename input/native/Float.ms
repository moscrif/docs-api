/**
Float values are "objects" of this class.
@class Float
@module core
*/
class Float
{

    /**
    Maximal value of the float type.
    @property MAX
    @type {Float}
    @readOnly
    */
    property MAX() { }

    /**
    Minimal value of the float type.
    @property MIN
    @type {Float}
    @readOnly
    */
    property MIN() { }

    /**
    Simply returns value of the float
    @method toFloat
    @return {Float}
    */
    function toFloat() { }

    /**
    Converts this float value to integer.
    @method toInteger
    @return {Integer}
    */
    function toInteger() { }

    /**
    Returns string representation of the float.
    @method toString
    @return {String}
    */
    function toString() { }

    /**
    Find minimum value of its arguments.
    @method min
    @param values* {Float} Float values to compare
    @return  {Float}
    @example
            Float.min(1, 2, 3); // returns 1
    */
    function min(values1,values2...) { }

    /**
    Find maximum value of its arguments.
    @method max
    @param values* {Float} Float values to compare
    @return  {Float}
    @example
            Float.max(0.5, 1.6, 0.7); // returns 1.6
    */
    function max(values1,values2...) { }

    /**
    Returns true if this float value appears to be not a number.
    @method isNaN
    @return  {Boolean}
    */
    function isNaN() { }

    /**
    Returns true if this float value is a finite number.
    @method isFinite
    @return  {Boolean}
    */
    function isFinite() { }

}