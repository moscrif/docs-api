/**
Represents indexed vector (array) of values. The Array object is used to store multiple values in a single variable.
@class Array
@example
        // An array can be defined in three ways.

        // 1.
        var myCars=new Array();
        myCars[0]="Saab";
        myCars[1]="Volvo";
        myCars[2]="BMW";
        
        //  2.
        var myCars=new Array("Saab", "Volvo", "BMW"); // condensed array
        
        // 3.
        var myCars=["Saab", "Volvo", "BMW"]; // literal array

@module core
*/
class Array
{

    /**
    Creates new array object from arguments provided.
    @method this
    @param [value]* {Object}
    @example
        var myCars=new Array("Saab", "Volvo", "BMW");
    */
    function this([value1 [, value2 [, ... valueN]]]) { }

    /**
    Get number of items in array.
    @property length
    @type {Integer}
    @readOnly
    @example
        var myCars=new Array("Saab", "Volvo", "BMW");
        console<<myCars.length<<"\n";  // 3
    */
    property length() { }

    /**
    Refers to a particular element of the array at the index position. Index is zero-based.
    @property [index]
    @type {Object}
        var myCars=new Array("Saab", "Volvo", "BMW");
        console<<myCars[1]<<"\n";   // Volvo
    */
    property [index] { }

    /**
    Returns part of vector and contains elements from beginning index and up to or excluded end index. Begin or/and end are optional. If begin is ommited then it is assumed to be 0, if end - length is used as end value.
    @property [begin..end]
    @type {Object}
    @example
        var myCars=new Array("Saab", "Volvo", "BMW", "Mitsubishi");
        console<<myCars[1..3]<<"\n";  // Volvo,BMW
    */
    property [begin..end] { }

    /**
    Appends array by values.
    @method concat
    @param [value]* {Object}
    @return {Array} The modified array
    */
    function concat([value1 [, value2 [, ... valueN]]])
    {
    }

    /**
    Create comma separated string from array.
    @method toString
    @return {String} comma separated list of values
    */
    function toString()
    {
    }

    /**
    Same as {{#crossLink "Array/toString"}}{{/crossLink}} - creates comma separated string from array.
    @method valueOf
    @return {String} Comma separated list of values
    */
    function valueOf()
    {
    }

    /**
    Appends array by values.
    @method push
    @param [value]* {Object}
    @return {Object} Last inserted element
    */
    function push([value1 [, value2 [, ... valueN]]])
    {
    }

    /**
    Removes last element from array.  This affects the length of the array!
    @method push
    @return {Object} Removed element or undefined
    */
    function pop()
    {
    }

    /**
    Removes first element of the array. This method changes the length of an array!
    @method shift
    @return {Object} Removed element or undefined
    @example
        console<<myCars[0..3]<<"\n";  // Saab,Volvo,BMW
        console<<myCars.shift()<<"\n"; // Saab
        console<<myCars[0..3]<<"\n";  // Volvo,BMW,Mitsubishi
    */
    function shift()
    {
    }

    /**
    Inserts a value at first array position.
    @method unshift
    @param value {Object}  Object, which should be added to the array.
    @return {Object} Inserted value.
    @example
        var myCars=new Array("Saab", "Volvo", "BMW", "Mitsubishi");
        console<<myCars[0..3]<<"\n";  // Saab,Volvo,BMW
        console<<myCars.unshift("Jaguar")<<"\n"; // Jaguar
        console<<myCars[0..3]<<"\n";  // Jaguar,Saab,Volvo
    */
    function unshift(value)
    {
    }

    /**
    Removes element at index.
    @method remove
    @param index {Integer}  Index of element to remove.
    @return {Object} Removed element or undefined if element was not found.
    @example
        var myCars = new Array("Saab", "Volvo", "BMW", "Mitsubishi");
        console<<myCars[0..3]<<"\n";        // Saab, Volvo, BMW
        console<<myCars.remove(1)<<"\n";    // Volvo
        console<<myCars[0..3]<<"\n";        // Saab, BMW, Mitsubishi
    **/
    function remove(index)
    {
    }

    /**
    Tries to locate element by value in the array and removes it.
    @method removeByValue
    @param index {Integer}  Array top locate.
    @return {Object} Removed element or undefined if element was not found.
    **/
    function removeByValue(value)
    {
    }

    /**
     Reverses order of elements in the array in-place. Returns the array.
    @method reverse
    @return {Array} The array.
    **/
    function reverse(value)
    {
    }

    /**
    Create new array consisting from elements of the array from start up to but not including end index, order between start and end (not included) index.
    @method slice
    @param start {Integer} Start index.
    @param [end] {Integer} End index.
    @return {Array} New sliced array.
    @example
        var myCars=new Array("Saab", "Volvo", "BMW", "Mitsubishi");
        console<<myCars[0..4]<<"\n";        // Saab, Volvo, BMW, Mitsubishi
        console<<myCars.slice(1)<<"\n";     // Volvo, BMW, Mitsubishi
        console<<myCars[0..4]<<"\n";        // Saab, Volvo, BMW, Mitsubishi
        console<<myCars.slice(1, 3)<<"\n";  // Volvo, BMW
        console<<myCars[0..4]<<"\n";        // Saab, Volvo, BMW, Mitsubishi
    **/
    function slice(start [, end])
    {
    }

    /**
    Sorts elements of the array in ascending order, if the sortFunction provided is used for comparing elements during sort.
    @method sort
    @param [sortFunction] {Function}  Function used for sorting. Items shall accept two values in parameters and return -1, 0 or +1 as result.
    @return {Array} Sorted array.
    @example
        function sortFunction (firstItem, secondItem)
        {
            if (firstItem.length == secondItem.length) {
                // both items are same
                return 0;
            } else {
                if (firstItem.length &lt; secondItem.length) {
                    // the first value should be before second
                    return -1;
                } else {
                     // the first value should be be after second
                    return 1;
                }
            }
        }
        
        var myCars=new Array("Saab", "Volvo", "BMW", "Mitsubishi");
        myCars.sort(); // default: sort by alphabetical order
        console<<myCars[0..4]<<"\n";  // BMW,Mitsubishi,Saab,Volvo
        myCars.sort(sortFunction); // sort by length of string (from shortest to longest)
        console<<myCars[0..4]<<"\n";  // BMW,Saab,Volvo,Mitsubishi
    **/
    function sort([sortFunction])
    {
    }

    /**
    Creates string fram all array's elements separated by the delimeter. If delimiter is not specified, the default is comma.
    @method join
    @param delimiter {String}  Character used to separat array's items.
    @return {String} String with all elements of the array separated by the delimeter.
    **/
    function join(delimiter)
    {
    }

    /**
    Returns brand new copy of the array.
    @method clone
    @return {Array} New sliced array.
    **/
    function clone()
    {
    }

    /**
    Find value in the array.
    @method indexOf
    @param value {Object} Value for searching
    @param [notfound=-1] {Object} Value, which is returned if required value was not found
    @return {Array} Returns index of searching value or value set by the second parameter (default: -1) if nothing was found.
    **/
    function indexOf(value [,notfound = -1])
    {
    }

    /**
    Get last index of the value in array. If the value is not found returns the notfound value (-1 by default).
    @method lastIndexOf
    @param value {Object} Value for searching
    @param [notfound=-1] {Object} Value, which is returned if required value was not found
    @return {Array} Returns index of searching value or value set by the second parameter (default: -1) if nothing was found
    **/
    function lastIndexOf(value [,notfound = -1])
    {
    }

    /**
    This method creates a new array with the result of calling a provided callback function on every element in this array. If thisObject is provided then the callback will have it as this. The map method does not mutate the array on which it is called.
    @method map
    @param callback {Function} The callback function may accept following parameters: callback(currentValue, index, array) where currentValue is a value of array element at the index position and array is the array to what this method applied.
    @param [thisObject] {Object} Function uses object as this
    @return {Array} New array with changed values.
    @example
        function square(currentValue, index, array)
        {
            // calculate square for every value
            return currentValue * currentValue;
        }

        var numbers = new Array(4,6,8);
        // apply square function to all array items
        var squared = numbers.map(square);
        // get changed values
        console<<squared.toString()<<"\n"; // 16,36,64
        // original values in array numbers ​​are unchanged
        console<<numbers.toString()<<"\n"; // 4,6,8
    **/
    function map(callback[, thisObject])
    {
    }

    /**
    This method applies the function simultaneously against two values of the array (from left-to-right) as to reduce it to a single value. The method returns result of last callback invocation. The method does not mutate the array on which it is called.
    @method reduce
    @param callback {Function} The callback function may accept following parameters: callback(previousValue, currentValue, index, array) where:

                previousValue is either initialValue (on first run) or result of previous call of the callback function;
                currentValue is a value of array element at the index position;
                array is the array being scanned (reduced).
    @param [initialValue] {Object} InitialValue value
    @return {Array} New array with changed values.
    **/
    function reduce(callback[, initialValue])
    {
    }

    /**
    This method calls the callback function once for each element in the array, and constructs new array of all the values for which the callback returns true. The filter method does not mutate the array on which it is called.
    @method filter
    @param callback {Function} he callback function may accept following parameters: callback(currentValue, index, array) where:

                currentValue is a value of array element at the index position;
                array is the array to what this method applied.
    @param [thisObject] {Object} Function uses object as this
    @return {Array} New array with changed values.
    @example
        var filtered = [12, 5, 8, 130, 44].filter(:el: el > 10);
        // filtered is [12, 130, 44] here
    **/
    function filter(callback[, thisObject])
    {
    }

}