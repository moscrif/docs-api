/**
Main application window
@class Facebook
@module net
*/
class Facebook
{
    /**
    Creates new instance of Window class.
    @method this
    @param {String} name Window's name.
    */
    function this(name) { }

    /**
    Initialize window object.
    @method init
    @param {bool} [allowFPS=false] enables or disables built-in FPS counter.
    @example
        var app = new Moscrif.Window();

        app.onStart = function()
        {
            ...
        }

        app.onProcess = function(sender)
        {
            return 1;
            // return 0 to quit application
        }
        app.init().run();
    */
    function init(allowFPS = false) { }

    /**
    Runs the main application loop. This function is blocking.
    @method run
    */
    function run() { }

    /**
    Function adds existing view object into this window.
    @method add
    */
    function add(view, order = #back) { }

    /**
    This event appears, when application starts - only once during the application life cycle.
    @event onStart
    @param {object} sender
    */
    property onStart(v) { }

}