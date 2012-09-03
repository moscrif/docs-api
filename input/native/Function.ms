/**
Script Function object.
@class Function
@module core
*/
class Function
{

    /**
    Constructor, compiles the functionBody and creates function object of it. arg1... argN are names to be used by the function as formal argument names. Each must be a string that corresponds to a valid JavaScript identifier.
    @method this
    @param [value] {Object}
    @param functionBody {Function}
    */
    function this([value],functionBody) { }

    /**
    Name of the function. For anonymous (lambda) functions it is undefined.
    @property name
    @type {String}
    @readOnly
    */
    property name() { }

    /**
    Fully qualified name of the function, includes name of class or namespace. For anonymous (lambda) functions it is undefined.
    @property fullName
    @type {String}
    @readOnly
    */
    property fullName() { }

    /**
    Returns total number of declared parameters.
    @property length
    @type {Integer}
    @readOnly
    */
    property length() { }

    /**
    Returns number of optional parameters.
    @property optionals
    @type {Integer}
    @readOnly
    */
    property optionals() { }

    /**
    Invokes the function in context of this set to thisObj.
    @method call
    @param thisObj {Object}
    @param [p0]* {Object}
    @example
        ....onDraw = function(sender, canvas)
        {
            var self = this super;
            self.draw.call(self, canvas);
        }
    */
    function call(thisObj [,p0, ... pN]) { }

    /**
    Invokes the function in context of this set to thisObj.
        Parameters of the function call are compsed from list of parameters p0 ... pN and appended by members of argv array.
        This actual call will have following parameters list: p0, ..., pN, argv[0], ... argv[N].
    @method apply
    @param thisObj {Object}
    @param [p0]* {Object}
    @param [argv]* {Object}
    */
    function apply(thisObj [,p0, ... pN][, argv] ) { }

    /**
    Checks property by its tag for existence.
    @method exists
    @param tag {Symbol} Symbol of the property
    @param [deep=false] {Boolean} If deep == true then does deep lookup - in function itself and its chain of classes.
    */
    function exists(tag, [deep = false]) { }

    /**
    Removes property of the function by its tag (a.k.a. name).
    @method remove
    @param tag {Symbol} Symbol of the property
    */
    function remove(tag) { }

    /**
    Does lookup in the object for member/property by its tag. This is a direct equivalent of obj.tag construction.
    @method propertyAt
    @param tag {Symbol} Symbol of the property
    */
    function propertyAt(tag) { }


}