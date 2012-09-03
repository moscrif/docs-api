/**
All integers are represented by this class.
@class Integer
@module core
*/
class Integer
{

    /**
    Maximum signed integer value. (2147483647)
    @property MAX
    @type {Integer}
    @readOnly
    */
    property MAX() { }

    /**
    Minimal value of integer type. (-2147483648)
    @property MIN
    @type {Integer}
    @readOnly
    */
    property MIN() { }

    /**
    Converts this integer value to float.
    @method toFloat
    @return {Float} Value converted to float.
    */
    function toFloat() { }

    /**
    Returns string representation of the integer using one of radix value: 10 (default), 8 or 16.
    @method toString
    @param [radix] {Integer}  Radix, the default is 10.
    @return {String} String representation of the integer
    */
    function toString([radix]) { }

    /**
    Find minimum value of arguments.
    @method min
    @param values* {Integer} Integer values to compare
    @return  {Integer}
    @example
            Integer.min(1, 2, 3); // returns 1
    */
    function min(values1,values2...) { }

    /**
    Find maximum value of its arguments.
    @method max
    @param values* {Integer} Integer values to compare
    @return  {Integer}
    @example
        Integer.max(1, 2, 3); // returns 3
    */
    function max(values1,values2...) { }

    /**
    Method - returns clipped value of this integer.
    @method limit
    @param min {Integer} Minimum.
    @param max {Integer} Maximum.
    @return  {Integer}
    @example
        function Integer.limit(min, max)
        {
            if (this < min)
                return min;
            if (this > max)
                return max;
            return this;
        }
    */
    function limit(min, max) { }


    /**
    Returns true if this value appears to be not a number.
    @method isNaN
    @return  {Boolean}
    */
    function isNaN() { }

    /**
    Returns true if this value is a finite number.
    @method isFinite
    @return  {Boolean}
    */
    function isFinite() { }

}