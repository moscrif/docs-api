/**
Text string.
@module core
@class String
*/
class String
{

    /**
    Number of characters in the string.
    @property length
    @type {Integer}
    @readOnly
    @example
        var string = "Moscrif";
        console<<string.length<<"\n";   // 7
    */
    property length() { }

    /**
    Code of character at the index position, Read-write index accessor. Zero-based index
    @property [index]
    @type {Integer}
    @example
        var string = "Moscrif";
        console<<string[1]<<"\n";       // 111 -> ASCII M
        string[0] = 100;                // 100 -> ASCII 100 = d
        console<<string<<"\n";          // doscrif
    */
    property [index] { }

    /**
    Creates string slice contained characters from start index and up to but not included end index.
    Zero-based index of first character If begin is ommited then it is assumed to be 0.
    Zero-based index of last character If end is ommited, length is used as end value.
    Return string slice contained characters from start index and up to but not included end index.
    @property [begin..end]
    @type {Integer}
    */
    property [begin..end] { }

    /**
    Tries to parse content of the string. If parsing failed then returns defaultValue if provided, or undefined value.
    @method toInteger
    @param defaultValue=undefined {Integer} Value, which is returned when parsing failed.
    @return {Integer} Integer value parsed from string or undefined / defaultValue if parsing failed.
    @example
        //toInteger expects string in the following format:
        [whitespace] [{+ | -}] [0 [{ x | X }]] [digits][/code]
    */
    function toInteger(defaultValue = undefined)
    {
    }

    /**
    Tries to parse content of the string. If parsing failed then returns defaultValue if provided, or undefined value.
    @method toFloat
    @param defaultValue=undefined {Float} Value, which is returned when parsing failed
    @return {Float} Float value parsed from string or undefined / defaultValue if parsing failed
    */
    function toFloat(defaultValue = undefined)
    {
    }


    /**
    Tries to parse the string into either float or integer value.
    @method toNumber
    @param defaultValue=undefined {Float|Integer} Value, which is returned when parsing failed
    @return {Float|Integer} Float or integer value parsed from string or undefined / defaultValue if parsing failed.
    @example
            //This is an equivalent of:
            var n = s.toInteger(s.toFloat());
    */
    function toNumber(defaultValue = undefined)
    {
    }

    /**
    Returns string itself.
    @method toSymbol
    @return {Symbol}
    */
    function toSymbol()
    {
    }

    /**
    Returns string escaped by html rules. Is an alias of the htmlEscape() method.
    @method toHtmlString
    @return {String}
    */
    function toHtmlString()
    {
    }

    /**
    Returns string escaped by url rules. Is an alias of the urlEscape() method.
    @method toUrlString
    @return {String}
    */
    function toUrlString()
    {
    }

    /**
    Determines whether the beginning of this string instance matches the specified string.
    @method startsWith
    @param str {String} The string to compare.
    @return {Boolean} True if value matches the beginning of this string; otherwise, false.
    */
    function startsWith(str)
    {
    }

    /**
    Determines whether the start of this string instance matches the specified string.
    @method endWith
    @param str {String} The string to compare.
    @return {Boolean} True if value matches the ending of this string; otherwise, false.
    */
    function endWith(str)
    {
    }

    /**
    Creates string slice consisting from characters starting from start index and up to but not included end indexes.
     __Note:__ Negative values of start or end treated as a "right side indexes" thus expression "Script".substring(0,-1) == "Script" is valid.
    @method substring
    @param start {Integer} Zero-based index of first character.
    @param [end] {Integer} Zero-based index of last character. If end is ommited it is interpretted as equal to length.
    @return {String} String slice consisting from characters starting from start index and up to but not included end index.
    @example
        var str = "moscrif";
        str.substring(1, 3);    // os
        str.substring(0,-3);    // moscr
    */
    function substring(start[, end])
    {
    }

    /**
    Creates string beginning by start index with required length.
    @method substr
    @param start {Integer} Zero-based index of first character.
    @param [end] {Integer} A number of characters in the slice.
    @return {String} Required string
    @example
        var str = "moscrif";
        str.substr(2,3); // scr
    */
    function substr(start[, end])
    {
    }


    /**
    Creates string consisting from concatenated arguments:  self + string1 + string2 + string3 + ... + stringN.
    @method concat
    @param [string1]* {Integer} Zero-based index of first character.
    @return {String} String consisting from concatenated arguments:  self + string1 + string2 + string3 + ... + stringN.
    @example
        var str = "moscrif";
        str.concat(" is").concat(" the best SDK"); // returns  "moscrif is the best SDK"
    */
    function concat(string1 [, string2 [, ... [, stringN]]]])
    {
    }

    /**
    Get character on index position.
    @method charAt
    @param index {Integer} Zero-based index
    @return {String} Character one index position. If index is out of bounds of the string then charAt returns empty string.
    */
    function charAt(index)
    {
    }

    /**
    Returns (Uni)code of character at index position.
    @method charCodeAt
    @param index {Integer} Zero-based index
    @return {String} (Uni)code of character at index position.
    */
    function charCodeAt(index)
    {
    }

    /**
    Searches this string for text in substring.
    @method indexOf
    @param substring {String} String to search.
    @param [start] {Integer} Function starts searching at this position
    @return {Integer} Index of first occurence of substring or -1 if not found.
    */
    function indexOf(substring [, start])
    {
    }

    /**
    Searches this string for text in substring.
    @method lastIndexOf
    @param substring {String} String to search.
    @param [start] {Integer} Function starts searching at this position
    @return {Integer} Index of last occurence of substring or -1 if not found.
    */
    function lastIndexOf(substring [, start])
    {
    }

    /**
    Compares this string with what string using lexicographic character order.
    @method localeCompare
    @param what {String} String to compare
    @return {Integer} 1;0 or -1 acording to result of comparation
    @example
        var str = "b";
        str.localeCompare("a"); // returns 1
        str.localeCompare("b"); // returns 0
        str.localeCompare("c"); // returns -1
    */
    function localeCompare(what)
    {
    }

    /**
    Returns fragment(s) of the string which satisfy regexp or returns RegExp object instance which satisfy string pattern.
    @method match
    @param regexp|str {RegExp|String} Regular expression or string
    @return {String|RegExp} For given regexp returns fragment(s) of the string which satisfy regexp. For given string returns RegExp object instance which satisfy string pattern.
    */
    function match(regexp|str)
    {
    }



/**
    Replaces all fragments satisfying regexp by replaceBy.
    @method replace
    @param regexp {RegExp} Regular expression
    @param replaceBy {String} If replaceBy is a function then this function will be called for each matching substring with parameters corresponding to the whole match and each matched sub-group.
    @return {String} Copy of the string where all fragments satisfying regexp are replaced by replaceBy.
    @example
        var s = "25.5K";
        // regEsp command, find whole or decimal number and split to two parameters
        var regEsp = /(\d+)?(([.])?\d+)/g;
        // convert kelvin to celsius
        function k2c(str, g, z)
        {
            // if number is decimal, z contains decimal part, otherwise it contains last character
            var number = g + z;

            // return converted value
            return (number.toNumber() - 273.15) + "C";
        }
        // replace value
        console<<s.replace(regEsp, k2c )<<"\n";
    */
    function replace(regexp, replaceBy)
    {
    }

/**
    Returns index of first occurence of string fragment satisfying regexp or -1 if not found.
    @method search
    @param regexp {RegExp} Regular expression
    @return {Integer} Index of first occurence of string fragment satisfying regexp or -1 if not found.
    */
    function search(regexp)
    {
    }

    /**
    Splits the string separated on components by separator.
    @method split
    @param regexp|str {RegExp|String} Either regular expression object or string
    @param [limit] {Integer} Maximum number of elements in returned array
    @return {Array} Array of strings - substrings between separators.
    @example
        var str = "Moscrif is the best cross-platform mobile development tool suite.";
        var words = str.split(" ");
        // writes list of words from str
        for (var i = 0; i &lt; words.length; i++) {
            console&lt;&lt;words[i]&lt;&lt;"\n";
        }
    */
    function split(separator[, limit])
    {
    }

    /**
    Creates string build from character with given integer codes.
    @method fromCharCode
    @param [code1]* {Integer} Integer codes of characters
    @return {String} String build from character with given integer codes.
    */
    function fromCharCode([code1[, code2[, ...[, codeN]]]])
    {
    }

    /**
    Creates lower case copy of the string.
    @method toLowerCase
    @return {String} Lower case copy of the string.
    @example
        var string = "Moscrif";
        console<<string.toLowerCase()<<"\n";   // moscrif
    */
    function toLowerCase()
    {
    }

    /**
    Creates upper case copy of the string.
    @method toUpperCase
    @return {String} Upper case copy of the string.
    @example
        var string = "Moscrif";
        console<<string.toUpperCase()<<"\n";   // MOSCRIF
    */
    function toUpperCase()
    {
    }


/**
    Creates url-escaped copy of the string if it contains characters need to be escaped or string itself if there are no such characters.
    __Note:__ that non-ascii characters are converted to utf-8 sequences first and resulting codes will be escaped.
    @method urlEscape
    @return {String} Url-escaped copy of the string.
    */
    function urlEscape()
    {
    }

/**
    Restores url-escaped string.
    @method urlUnescape
    @return {String} Restored string.
    */
    function urlUnescape()
    {
    }

/**
    Replace each &lt; &gt; &amp; &quot; or &apos;  character by &amp;lt; &amp;gt; &amp;amp; &amp;quot; or &amp;apos; sequence.
    @method htmlEscape
    @return {String}
    */
    function htmlEscape()
    {
    }

/**
    Restores html-escape string.
    @method htmlUnescape
    @return {String} String where html entities replaced by correspondent character codes.
    */
    function htmlUnescape()
    {
    }

/**
    Returns composed string. Note, this is a "stringizer" method.
    @method $
    @return {String}
    */
    function $()
    {
    }


/**
    Returns composed string. Note, this is a "stringizer" method. See [sprintf C/C++ function](http://www.cplusplus.com/ref/cstdio/printf.html)
    Additional format types:

    * %v and %V - these format types accept any value as an argument
                        and produce source code representation of the value suitable for later parsing by eval() method.
                        Thus if value is an array of values it will be printed as [element1, element2, element3... elementN]
                        and object (instance of Object class) will be printed as {key1:value1, key2:value2,..., keyN:valueN}".
                        %v produces one line output and %V tries to produce human readable output with line feeds and tabulations.
                        Use it if you need to serialize objects in AJAX/JSON fashion.[/li]
    * %S -        this format type converts its argument into string and outputs it with HTML escapement.
                        So characters like &lt; will be converted to &amp;lt; sequences in the output.[/li]

    @method printf
    @param format {String} String specifying format of text
    @param [value1]* {Object} Values to be inserted to text
    @return {String} Formatted string
    */
    function printf(format, [value1[, value2[, ...[, valueN]]]])
    {
    }

/**
    Scans the string for values according to the rules of <a target="_blank" href="http://www.cplusplus.com/ref/cstdio/printf.html">sprintf C/C++ function</a> with wildcard (like %[a-z] ) extensions.
    See definition of  [scanf in MSDN](http://msdn.microsoft.com/en-us/library/xdb9w69d(VS.71).aspx). Additional format types:

    * %N - scans for either float or integer number.[/li]

    @method scanf
    @param format {String} String specifying format of text
    @return {Array} Function returns array of successfully parsed values.
    */
    function scanf(format)
    {
    }
}