/**
Following functions and variables that "live" in global namespace so they accessible in script without any namespace designator.
@class Global
@module core
@example
        var r = eval( " 348.0 / 23.7 " );
        console << r << "\n";
*/
class Global
{

    /**
    Standard input/output stream. Intended to use for debugging purposes.
    @property console
    @type {Stream}
    @readOnly
    */
    property console() { }

    /**
    Evaluates (interprets) input and returns its value. If input is a string then function tries to interpret it as if it contains script source code.
    If input is a stream object then it compiles and executes source code from it.
    @method parseData
    @param {String|Stream} input String or stream object, containing source code to run.
    @param {Object} [env] Is an environment object - if provided then script execution takes place in the namespace of that object..
    @return {Object} Value of the input
    @example
            //Example: after execution of the following:
            var obj = eval("({ one:1, two:2 })");
            variable obj now contains object having two fields: one and two.
            var res = eval("one + two;", obj);
            //After execution of two lines above variable res will contain integer 3.
    */
    function eval(input[, env]) { }


    /**
    JSON++ data parser.Evaluates (interprets) data literal at the input and returns its value. Input shall contain valid data literal expression otherwise parsing exception will be thrown.
    Main difference from the eval function is that parseValue will not parse and execute any function declarations or functions so it is safe to use this function when data is coming from unknown sources e.g. in AJAX like of interactions.
    @method parseData
    @param {String|Stream} input String or stream object, containing source code to parse
    @return {Object} Value of the input
    @example
            //Example 1: after execution of the following:
            var obj = parseValue("{ one:1, two:2 }");
            //variable obj will contain object having two fields: one and two.

            //Example 2: after execution of the following:
            var v = parseValuel("3.1415926");

            //variable v will contain float number 3.1415926 - parsed value of the string.
    */
    function parseData(input) { }

    /**
    Stores the value into file filename or stream in binary form.
    @method store
    @param {String|Stream} file String - file name or Stream object for output file.
    @param {Object} value Value to store.
    @return {Boolean} true if data was stored successfully
    @example
            //Example 1: after execution of the following:
            var obj = parseValue("{ one:1, two:2 }");
            //variable obj will contain object having two fields: one and two.

            //Example 2: after execution of the following:
            var v = parseValuel("3.1415926");

            //variable v will contain float number 3.1415926 - parsed value of the string.
    */
    function store(file, value) { }

    /**
    Restores value previously written into the file (filename) or stream by function store.
    @method fetch
    @param {String|Stream} file Either string - file name or stream object for source file.
    @return {Object} Restored value or null if operation failed.
    */
    function fetch(file) { }

    /**
    Hash value of its argument.
    @method hash
    @param {Object} value Value to hash.
    @return {Integer} Hashed value of its argument.
    */
    function hash(value) { }

    /**
    Creates map (simple object) that has the same set of properties as the obj.
    Main purpose of membersOf is to be used in for(var (k,v) in membersOf(obj)) alike enumerations to scan properties of entities that have different semantic of enumeration than in instances of Object.
    @method membersOf
    @param {Object|Function} obj Object to map.
    @return {Object} Map (simple object) that has the same set of properties as the obj.
    */
    function membersOf(obj) { }

    /**
    Generate a random number between 0 and maxNumber-1.
    @method rand
    @param {Integer} maxNumber Upper limit of generated numbers
    @return {Integer} Random number ranged 0..maxNumber-1
    @example
        var limit = rand(100); // 0..99
        console << limit << "\n";
    */
    function rand(maxNumber) { }

    /**
    Invokes garbage collector.
    @method gc
    */
    function gc() { }

    /**
    Parses the url string.
    @method crackUrl
    @param {String} url Url string too parse.
    @return {Object} Returns an object having following fields:

    1. port - integer, tcp/ip port number;
    1. protocol - string, protocol like "http", "file", etc.;
    1. hostname - string, host name;
    1. anchor - string, anchor;
    1. username - string;
    1. password - string;
    1. params - string, parameters of http GET request
    1. dir - string, directory
    1. name - string, filename without extension
    1. ext -  string, extension
    1. name_ext - string, filename with extension.
    @example
            crackUrl("http://public:moscrif@mothiva.com:8443/svn").show();
            // displays
            Class Object: [object Class]
                Properties:
                    params: ""
                    dir: ""
                    ext: ""
                    port: 8443
                    name_ext: "/svn"
                    protocol: "http"
                    name: "/svn"
                    hostname: "mothiva.com"
                    anchor: ""
                    username: "public"
                    password: "mothiva.com:8443"
    */
    function crackUrl(url) { }

    /**
    Function returns symbol of the string. Internally symbol is 32bit value so symbol space is limited - it makes no sense to "symbolize" arbitrary strings.
    @method symbol
    @param {String} string
    @return {Symbol}
    */
    function symbol(string) { }

    /**
    Handle application errors.
    @event onError
    @param {Exception} exp Moscrif exception instance.
    */
    function onError(exp) { }
}