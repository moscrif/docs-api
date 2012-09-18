/**
This class encapsulates top level window (application).
@class Moscrif.Window
@module ui
*/
class Moscrif.Window
{

    /**
    Constructor - creates new instance of Window class.
    @method this
    @param [name] {String} Window's name.
    @return {Moscrif.Window}
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
    function this([name]) { }


    /**
    This function ensure redrawing a rectangle, determined by parameters. If no parameters are set, whole object will be redraw. Redrawing manages the function, which is set to onDraw event.
    @method invalidate
    @param [left] {Boolean} Left border of the rectangle to be invalidated
    @param [top] {Boolean} Top border of the rectangle to be invalidated.
    @param [right] {Boolean} Right border of the rectangle to be invalidated.
    @param [bottom] {Boolean} Bottom border of the rectangle to be invalidated.
    @example
        var app = new Moscrif.Window();
        app.terminate = false;
        ...
        app.onProcess = function(sender)
        {
            // redraw window every call of onProcess event, usally used at games
            app.invalidate();

            return this.terminate ? 0 : 1;
        }
    */
    function invalidate([left, top, right, bottom]) { }

   /**
    Pause layer's recalculating. This function is useful when a lot of items are inserted into view in short time. When resumeLayout is called, all items will be inserted at once .
    @method suspendLayout
    @return {Window}
    */
    function suspendLayout() { }


    /**
    Resume layer's recalculating.
    @method resumeLayout
    @return {Window}
    */
    function resumeLayout() { }

    /**
    Performs (force) layout calculations.
    @method performLayout
    @return {Window}
    */
    function performLayout() { }

    /**
    Initialize window object.
    @method init
    @chainable
    @param enableFPS=true {Boolean} Default is false (FPS counting is disabled).
    @example
        var app = new Moscrif.Window();
        app.terminate = false;
        app.onStart = function()
        {
        
        }
        app.onProcess = function(sender)
        {
        
            return this.terminate ? 0 : 1;
        }
        
        app.init();
        app.run();
    */
    function init(enableFPS = true) { }

    /**
    Runs the main application loop. This function is blocking.
    @method run
    @chainable
    @return {Window}
    */
    function run() { }

    /**
    Function adds existing view object into this window.
    @method add
    @chainable
    @param view {View} View to add. View/ScrollView/TextView are supported.
    @param [order] {Symbol} Default is #back. Value is

            * #front
            * #back
    @return {Window} Return instance of itself.
    @example
            var container = new Moscrif.View("container");
            ... width, height, onDraw ...
            app.add(container);

            var itemA = new Moscrif.View("itemA");
            ... width, height (60), top (0), onDraw ...
            container.add(itemA);

            var itemB = new Moscrif.View("itemB");
            ... width, height (60), top (60), onDraw ...
            container.add(itemB);
    */
    function add(view [, order]) { }

    /**
    Removes all object from the window.
    @method removeAll
    @chainable
    */
    function removeAll() { }

    /**
    Search for child view, which name is same as name from function's param.
    @method find
    @param name {String} Name of the child view to search
    @return {View} Instance of found child view, or null if not found.
    @example
        var btnView = new Moscrif.View();
        btnView.name = "button";
        
        var imgView = new Moscrif.View();
        imgView.name = "image";
        app.add(imgView);
        
        // find button view
        var button = this.find("button");
        // detach button view
        button.detach();
    */
    function find(name) { }

    /**
    Count of the childs.
    @property childredCount
    @type {Integer}
    */
    property childredCount() { }

    /**
    Name offset the window.
    @property name
    @type {String}
    */
    property name() { }

    /**
    StackLayout used to organize elements into the window.
    @property layout
    @type {Integer}
    */
    property layout() { }

/**
    This event appears, when application starts - only once during the application life cycle.
    @param sender {Object} Object which caused this event.
    @event onStart
    */
    property onStart(sender) { }

/**
    This event appears, when application ends - only once during the application life cycle.
    @param sender {Object} Object which caused this event.
    @event onQuit
    */
    property onQuit(sender) { }

/**
    This event appears, when application moves to foreground.
    @param sender {Object} Object which caused this event.
    @event onForeground
    */
    property onForeground(sender) { }

/**
    This event appears, when application moves to background.
    @param sender {Object} Object which caused this event.
    @event onBackground
    */
    property onBackground(sender) { }

/**
    Callback function, which is which is called from the object every 25ms.
    @event onProcess
    */
    property onProcess() { }

/**
    This event occurs, when it is necessary to redraw object. onDraw event is usually managed by skin.
    @event onDraw
    @param sender {Object} Object which caused this event.
    @param canvas {Canvas} Canvas object enabling drawing to the TextView.
    */
    property onDraw(sender, canvas) { }

/**
    This event is raised by press the key.
    @event onKeyPressed
    @param sender {Object} Object which caused this event.
    @param key {Symbol} Pressed key.

    * #leftSoftKey
    * #rightSoftKey
    * #home
    * #back
    * #send
    * #end
    * #num0 - #num9
    * #star - the * key
    * #hash - the # key
    * #up
    * #down
    * #left
    * #right
    * #ok
    * #volumeUp
    * #volumeDown
    * #power
    * #camera
    */
    property onKeyPressed(sender, key) { }

/**
    This event is raised by release the key.
    @event onKeyReleased
    @param sender {Object} Object which caused this event.
    @param key {Symbol} Pressed key.

    * #leftSoftKey
    * #rightSoftKey
    * #home
    * #back
    * #send
    * #end
    * #num0 - #num9
    * #star - the * key
    * #hash - the # key
    * #up
    * #down
    * #left
    * #right
    * #ok
    * #volumeUp
    * #volumeDown
    * #power
    * #camera
    */
    property onKeyReleased(sender, key) { }

/**
    This event is raised by release an UNICODE character key.
    @event onChar
    @param sender {Object} Object which caused this event.
    @param key {Integer} Code from unicode table.
    */
    property onChar(sender, key) { }

/**
    Occurs when the control is resized.
    @event onResize
    @param sender {Object} Object which caused this event.
    @param width {Integer} New width of resized view.
    @param height {Integer} New height of resized view.
    */
    property onResize(sender, width, height) { }

/**
    Called when touch (click) is stared.
    @event onPointerPressed
    @param sender {Object} Object which caused this event.
    @param x {Integer} X coordinates of pointer.
    @param y {Integer} Y coordinates of pointer.
    */
    property onPointerPressed(sender, x, y) { }

/**
    Called when touch (click) is finished.
    @event onPointerReleased
    @param sender {Object} Object which caused this event.
    @param x {Integer} X coordinates of pointer.
    @param y {Integer} Y coordinates of pointer.
    */
    property onPointerReleased(sender, x, y) { }

/**
    Called when touch (click) is moved.
    @event onPointerDragged
    @param sender {Object} Object which caused this event.
    @param x {Integer} X coordinates of pointer.
    @param y {Integer} Y coordinates of pointer.
    */
    property onPointerDragged(sender, x, y) { }

    /**
    This property sets supported device orientations. If there are more supported orientations event onOrientationChanged is called, when device orientation change.
        Supported are:

    * #portrait
    * #landscape-left
    * #landscape-right
    @property orientation
    @type {Symbol}
    */
    property orientation(v) { }

    /**
    This event is raised by change device orientation.
    @event onOrientationChanged
    @param orientation {Symbol} New orientation of device
    @example
        game.onOrientationChanged = function(orientation)
        {
            // resize all photos to current orientation
            logI("new orientation is : ", orientation);
        }
    */
    property onOrientationChanged(v) { }

}