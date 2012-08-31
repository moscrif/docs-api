/**
Stream class has no public constructor to creates new instance use Stream.openFile, Stream.openSocket or Stream.openString functions.
@class Stream
@module core
*/
class Stream
{

    /**
    Opens the file which name is stored in the file-name string and returns an instance of Stream object.
    @method openFile
    @param fileName {String}  Name of the file to open.
    @param [mode] {String}  String specifying the behavior of function:

    * "r" -   Open a file for reading. The file must exist.
    * "w" -   Create an empty file for writing. If a file with the same name already exists its content is erased and the file is treated as a new empty file.
    * "a" -   Append to a file. Writing operations append data at the end of the file. The file is created if it does not exist.
    * "r+" -  Open a file for update both reading and writing. The file must exist.
    * "w+" -  Create an empty file for both reading and writing. If a file with the same name already exists its content is erased and the file is treated as a new empty file.
    * "a+" -  Open a file for reading and appending. All writing operations are performed at the end of the file, protecting the previous content to be overwritten. You can reposition (fseek, rewind) the internal pointer to anywhere in the file for reading, but writing operations will move it back to the end of file. The file is created if it does not exist.

    It is also possible to specity encoding for text files:
    * "8" -   Causes the file to be encoded with UTF-8.
    * "u" -   Causes the file to be encoded with UCS2.

    @return {Stream} New instance of Stream class, which allows to manipulate with opened file.
    */
    function openFile(fileName [,mode]) { }

    /**
    Opens the socket stream which address and port is stored in the address-port string and returns an instance of Stream object. Opens socket stream in read-write mode.
    @method openSocket
    @param [addressPort] {String}  Address and port to open. Address can be either domain name or IP address. Format of addressPort string is "domain:NNN" or "NNN.NNN.NNN.NNN:NNN" where N is a decimal digit.
    @param [timeout=10] {Integer}  Timeout is a number of seconds to wait on any operations on this socket. If execution of operation on this socket will take more than this limit then exception will be thrown by runtime system.
    @param numberOfAttempts=1 {Integer} Number of attempts to connect, 1 by default.
    @return {Stream} New instance of Stream class or null if funcition failed.
    @example
            // following code will print out http server response of moscrif.com server:
            var sock = Stream.openSocket("www.moscrif.com:80" , 5 );
            if(!sock)
                return;
            sock.println("GET http://www.moscrif.com/default.aspx HTTP/1.0");
            sock.println("User-Agent: Moscrif");
            sock.println("");

            while( true )
            {
                var s = sock.readln();
                if(s == undefined) break;
                console&lt;&lt;s&lt;&lt;"\n";
            }
    */
    function openSocket(addressPort, timeout = 10, numberOfAttempts = 1) { }

    /**
    Opens in-memory string output stream with initialSize (integer) of its buffer. Use string streams when you plan to update some string frequently or compose string from many components. String streams are also known as StringBuffer/StringBuilder in Java or .NET. To get current content of the string stream use its method toString.
    @method openString
    @param initialSize|initialValue  {String}  Initial size of stream, or initial value of stream.
    @return {Stream} New instance of Stream class or null if funcition failed
    */
    function openString(initialSize|initialValue) { }

    /**
    Returns content of string buffer if this is a string stream or name/address of the stream if it was open as file or socket stream.
    @method toString
    @return {String}
    */
    function toString() { }

    /**
    Closes this stream - file, socket or string stream buffer.
    @method close
    @return {Boolean}
    */
    function close() { }

    /**
    Outputs string into the stream. print is an equivalent of: stream << str; operation.
    @param str  {String} String to input.
    @method print
    @return {Boolean}
    */
    function print(str) { }

    /**
    Stringizer method, outputs content in brackets appended by \n into the stream.
    @param str  {String} String to input.
    @method $
    @return {Boolean}
    */
    function $(str) { }

    /**
    Outputs string appended by \n into the stream. println is an equivalent of: stream&lt;&lt;str&lt;&lt;"\n"; operation.
    @param str  {String} String to input.
    @method println
    @return {Boolean}
    */
    function println(str) { }

    /**
    Stringizer method, outputs content in brackets appended by \n into the stream.
    @param str {String} String to input.
    @method $n
    @return {Boolean}
    */
    function $n(string) { }

    /**
    Prints formatted text by the rules of printf C/C++ function.
    Additional format types:

    * %v and %V - these format types accept any value as an argument and produce source code representation of the value suitable for later parsing by eval() method. Thus if value is an array of values it will be printed as "[element1, element2, element3... elementN]" and object (instance of Object class) will be printed as "{key1:value1, key2:value2,..., keyN:valueN}". %v produces one line output and %V tries to produce human readable output with line feeds and tabulations. Use it if you need to serialize objects in AJAX/JSON fashion.
    * %S - this format type converts its argument into string and outputs it with HTML escapement. So characters like "&lt;" will be converted to &amp;lt; sequences in the output.
    @param format  {String} String specifying format of text.
    @param [value]*  {Object} Values to be inserted to text.
    @method printf
    @return {Boolean}
    */
    function printf(format [, value1[, value2[, ...[, valueN]]]]) { }

    /**
    Scans the stream for values according to the rules of scanf C/C++ function with wildcard (like %[a-z] ) extensions.
    See definition of  scanf in MSDN.
    Additional format types:

    * %N - scans for either float or integer number.

    @param format  {String} specifying format of text
    @method printf
    @return {Array} Array of successfully parsed values.
    */
    function scanf(format) { }

   /**
    Outputs character into the stream. Character defined by its integer code. putc is an equivalent of: stream << charcode; operation.
    @param charCode  {Integer} Code of char to input
    @method putc
    @return {Boolean} True if function succeed, otherwise false.
    */
    function putc(charCode) { }

   /**
    Reads one character from the stream.
    @method getc
    @return {Integer} Char code as integer or undefined if stream was closed or got EOF.
    */
    function getc() { }

   /**
    Reads sequence of characters from stream until '\n' character.
    @method readln
    @return {String} String read without trailing '\r' and '\n'.
    */
    function readln() { }

    /**
    Reports if this is an input stream or not.
    @property length
    @type {Boolean}
    @readOnly
    */
    property length() { }

/**
    Gets or sets encoding used by the stream. For now it supports either "none" (raw byte stream) and "utf-8" encodings.
    @property encoding
    @type {Integer}
    */
    property encoding() { }

    /**
    Name of the stream - either file name or url where the data came from. Can be an empty string, e.g. for in memory streams.
    @property name
    @type {String}
    @readOnly
    */
    property name() { }



}