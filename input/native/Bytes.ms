/**
Bytes is an array of bytes.
@class Bytes
@module core
*/
class Bytes
{

    /**
    Constructs object of type Bytes - sequence of bytes of numBytes length.
    @param numBytes {Integer} Number of bytes in the byte vector.
    @method this
    @return {Bytes} New instance offset Bytes
    @example
        var myCars=new Array("Saab", "Volvo", "BMW");
    */
    function this(numBytes) { }

    /**
    Element of the array at the index position, read-write index accessor. Zero-based integer index.
    @property [index]
    @type {Integer}
    */
    property [index] { }

    /**
    Number of bytes in the byte vector.
    @property length
    @type {Integer}
    @readOnly
    @example
        var myCars=new Array("Saab", "Volvo", "BMW");
        console<<myCars.length<<"\n";  // 3
    */
    property length() { }

    /**
    Create string from bytes array. If encoding is not provided then the method returns base64 representation of the byte vector. Otherwise a string from UTF-8 encoded bytes.
    @param [encoding] {String} Text encoding for supported encodings see [http://www.iana.org/assignments/character-sets](http://www.iana.org/assignments/character-sets ).
    @method toString
    @return {String} A string from UTF-8 encoded bytes.
    @example
        // returns string from UTF-8 encoded bytes
        var utf8 = bytes.toString("UTF-8");
        // returns base64 representation of the bye vector.
        var b64 = bytes.toString();
    */
    function toString([encoding]) { }

    /**
    Create hexadecimal string from bytes array.
    @method toHex
    @return {String} A hexadecimal representation off the bytes.
    @example
        console &lt;&lt; "0x" << bytes.toHex() << "\n";
    */
    function toHex() { }

    /**
    Save content of the byte vector into the file.
    @param filename {String} Name of file. If file exists then it will be overwritten.
    @method save
    */
    function save(filename) { }

    /**
    Create new Bytes object, loads file into it and returns that object.
    @param filename {String} Name of file to open. If file does not exist function cause and error.
    @method load
    @throw File not found
    @return {Bytes} Bytes object loaded from file
    */
    function load(filename) { }

}