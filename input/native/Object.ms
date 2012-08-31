/**
Despite of its name Object is a class that contains methods of objects in script.
@class Object
@module core
@example
        var obj = { one:1, two:2 }; // creating object from literal
        // this line here will be evaluated to true:
        if (obj instanceof Object)
            console << "I am an instance of Object" ; // will output this
*/

class Object
{

    /**
    Constructor, creates instance of Object class - object per se.
    @method this
    */
    function this() { }

    /**
    Name of the class if object was created as instance of user defined class.
    @property className
    @type {String}
    @readOnly
    @example
            class Clazz
            {
            }

            var instance = new Clazz();
            var obj = { };

            // obj has "undefined" className
            assert obj.className == undefined;

            // instance has "Clazz" className
            assert instance.className == "Clazz";
    */
    property className(v) { }

    /**
    Total number of members this instance contains.
    @property length
    @type {Integer}
    @readOnly
    */
    property length(v) { }

   /**
    Returns string "[object Object]".
    @method toString
    */
    function toString() { }

   /**
    Returns object itself.
    @method valueOf
    @return {Object}
    */
    function valueOf() { }

   /**
    Makes copy of the object and returns it.
    @method clone
    @return {Object} Copy of the object
    */
    function clone() { }

   /**
    Checks property by its tag for existence.
    @method exists
    @param tag {Symbol} Symbol of the property.
    @param [deep=false] {Boolean} If deep == true then does deep lookup - in function itself and its chain of classes.
    @return {Boolean}
    */
    function exists(tag, [deep = false]) { }

   /**
    Removes property of the function by its tag (a.k.a. name).
    @method remove
    @param tag {Symbol} Symbol of the property.
    @return {Boolean}
    */
    function remove(tag) { }

   /**
    Invokes the function in context of this set to thisObj.
    @method call
    @param thisObj {Object}
    @param [p] {Object}
    @return {Object}
    */
    function call(thisObj [,p0, ... pN]) { }

   /**
    Reports class name and list of property name/values of the object. Intended to use for debugging purposes.
    @method debugShow
    @param out=console {Stream} Stream for output, the default is console.
    @param [p] {Object}
    @return {Array} list of members.
    */
    function debugShow(out = console) { }

   /**
    Evaluates (interprets) what with context of this equal to the object. If namespace object is given then it is used as global namespace for evaluated code.
    @method eval
    @param what {String|Stream} Code to evaluate.
    @param [namespace] {Object} Object used as global namespace for evaluated code
    @example
            var obj = new Object();
            obj.number = 3;
            obj.eval("number = number*number", obj);
            obj.number; // 9
    */
    function eval(what[, namespace]) { }

   /**
    Does lookup in the object for member/property by its tag. This is a direct equivalent of obj.tag construction. Be patient when using propertyAt in "property undefined handler". It can leads to "Stack overflow" exception, because propertyAt can call "property undefined handler". See also exists functions.
    @method propertyAt
    @param tag {Symbol} 
    */
    function propertyAt(tag) { }




}
