/**
This class defines controls, which are components with visual representation.
@class View
@module ui
@example
        var btnView = new Moscrif.View("button");
        btnView.width = 150;
        btnView.height = 150;
        btnView.top = 100;
        btnView.left = 100;
        btnView.onDraw = function(s, c)
        {
            ......
        }
        app.add(btnView);
*/
class Moscrif.View
{

    /**
    Create new object.
    @method this
    @param [name] {String} Name of the object. Pass null for unnamed view
    @return {View}
    */
    function this([name]) { }

    /**
    This function ensure redrawing a rectangle, determined by parameters. If no parameters are set, whole object will be redraw. Redrawing manages the function, which is set to onDraw event.
    @method invalidate
    @param [left] {Boolean} Left border of the rectangle to be invalidated.
    @param [top] {Boolean} Top border of the rectangle to be invalidated.
    @param [right] {Boolean} Right border of the rectangle to be invalidated.
    @param [bottom] {Boolean} Bottom border of the rectangle to be invalidated.
    @example
            container = new Moscrif.View("container");
            ….
            app.add(container);
            ….
            // redraw top half of view
            container.invalidate(0, 0, System.width, System.height / 2);
    */
    function invalidate([left, top, right, bottom]) { }

    /**
    Function adds existing view object into ScrollView.
    @method add
    @param view {View} View to add. View/ScrollView/TextView are supported.
    @param [order] {Symbol} Default is.

            * #front
            * #back
    @return {View} Return instance of itself.
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
    Function sets focus to the object.
    @method setFocus
    @return {Boolean}
    */
    function setFocus() { }

    /**
    Returns true if ScrollView has focus. Otherwise, function returns false.
    @method hasFocus
    @return {Boolean}
    */
    function hasFocus() { }

    /**
    Search for child view, which name is same as name from function's param.
    @method find
    @param name {String} Name of the child view to search
    @return {View} Instance of found child view, or null if not found.
    @example
            var container = new Moscrif.View("container");
            
            var itemA = new Moscrif.View("itemA");
            container.add(itemA);
            
            var itemB = new Moscrif.View("itemB");
            container.add(itemB);
            …...
            // find view by name
            var item = container.find("itemA");
            // detach them
            item.detach();
    */
    function find(name) { }

   /**
    Returns four values (left, top, right, bottom) of child's union content.
    @method getChildrenBounds
    @return {Multivalue}
    */
    function getChildrenBounds() { }

    /**
    Returns wo values (width, height) of child's union content.
    @method getChildrenSize
    @return {Multivalue}
    */
    function getChildrenSize() { }

    /**
    Pause layer's recalculating. This function is useful when a lot of items are inserted into view in short time. When resumeLayout is called, all items will be inserted at once .
    @method suspendLayout
    @return {Window}
    @example
            var container = new Moscrif.View("container");
               
            // suspend layout before adding a large number of components to ensure better performance
            container.suspendLayout();
            for (var i = 0; i&lt;NUM_OF_ITEMS; i++) {
                var item = new Moscrif.View("item_" + i);
                …. width, heigh, onDraw (left, top is managed by layout)...
                container.add(item);
            }
            // resume layout
            container.resumeLayout()
    */
    function suspendLayout() { }


    /**
    Resume layer's recalculating.
    @method resumeLayout
    @return {Window}
    @example
            var container = new Moscrif.View("container");
            
            // suspend layout before adding a large number of components to ensure better performance
            container.suspendLayout();
            for (var i = 0; i&lt;NUM_OF_ITEMS; i++) {
                var item = new Moscrif.View("item_" + i);
                …. width, heigh, onDraw (left, top is managed by layout)...
                container.add(item);
            }
            // resume layout
            container.resumeLayout();
    */
    function resumeLayout() { }

    /**
    Performs (force) layout calculations.
    @method performLayout
    @return {Window}
    */
    function performLayout() { }

   /**
    Suspends the drawing of this view.
    @method suspendDrawing
    @return {Window}
    */
    function suspendDrawing() { }

   /**
    Resume view's drawing.
    @method resumeDrawing
    @return {Window}
    */
    function resumeDrawing() { }

   /**
    Resume view's drawing.
    @method resumeDrawing
    @return {Window}
    */
    function resumeDrawing() { }

   /**
    Remove this view form it's parent.
    @method detach
    @example
            var container = new Moscrif.View("container");
            
            var itemA = new Moscrif.View("itemA");
            container.add(itemA);
            
            var itemB = new Moscrif.View("itemB");
            container.add(itemB);
            …...
            // find view by name
            var item = container.find("itemA");
            // detach them
            item.detach();
    */
    function detach() { }

    /**
    Count of the childs.
    @property childredCount
    @type {Integer}
    */
    property childredCount() { }

    /**
    Name of the object.
    @property name
    @type {String}
    */
    property name() { }

    /**
    StackLayout used to organize elements into the object.
    @property layout
    @type {Integer}
    */
    property layout() { }

    /**
    X - coordinates of view's position.
    @property left
    @type {Integer}
    */
    property left() { }

/**
    Y - coordinates of view's position.
    @property top
    @type {Integer}
    */
    property top() { }

/**
    Width of the object (in pixels).
    @property width
    @type {Integer}
    */
    property width() { }

/**
    Height of the view (in pixels).
    @property height
    @type {Integer}
    */
    property height() { }

/**
    Visibility of the view. True = visible, false = invisible. Default is visible.
    @property visible
    @type {Boolean}
    */
    property visible() { }

/**
    Ability to have a focus.
    @property focusable
    @type {Boolean}
    */
    property focusable() { }


/**
    Set/Get if the view is not clipped to its bounds.
    @property clipToBounds
    @type {Boolean}
    */
    property clipToBounds() { }

/**
    Gets or sets if the view's width is stretchable.

    * #both
    @property stretch
    @type {Symbol}
    */
    property stretch() { }

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
    Called when this view is scrolled (only when is owned by ScrollView).
    @event onParentScroll
    @param sender {Object} Object which caused this event.
    @param parent {ScrollView} Parent object.
    */
    property onParentScroll(sender, parent) { }


}