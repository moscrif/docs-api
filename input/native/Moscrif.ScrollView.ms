/**
This class defines controls, which are components with visual representation.
@class Moscrif.ScrollView
@module ui
*/
class Moscrif.ScrollView
{

    /**
    Create new ScrollView object.
    @method this
    @param [name=null] {String} Name of object. Use null for unnamed control.
    @return {ScrollView}
    @example
            var layout = new Moscrif.StackLayout();
            layout.align = #start;
            layout.pack = #start;
            layout.orientation = #vert;

            container = new Moscrif.ScrollView("container");
            container.scrollMode = #vert;
            container.dockContent = #top;
            container.layout = layout;
            …. left, top, width, height ….
            app.add(container);
    */
    function this(name = null) { }

    /**
    This function ensure redrawing a rectangle, determined by parameters. If no parameters are set, whole object will be redraw. Redrawing manages the function, which is set to onDraw event.
    @method invalidate
    @param [left] {Boolean} Left border of the rectangle to be invalidated.
    @param [top] {Boolean} Top border of the rectangle to be invalidated.
    @param [right] {Boolean} Right border of the rectangle to be invalidated.
    @param [bottom] {Boolean} Bottom border of the rectangle to be invalidated.
    */
    function invalidate([left, top, right, bottom]) { }

    /**
    Function adds existing view object into ScrollView.
    @method add
    @param view {View} View to add. View/ScrollView/TextView are supported.
    @param [order] {Symbol} Default is.

            * #front
            * #back
    @return {ScrollView} Return instance of itself.
    */
    function add(view [, order]) { }

    /**
    Removes all views from the object.
    @method removeAll
    */
    function removeAll() { }

    /**
    @method getChildrenBounds
    @return {Multivalue}
    */
    function getChildrenBounds() { }

    /**
    @method getChildrenSize
    @return {Multivalue}
    */
    function getChildrenSize() { }

    /**
    Pause layer's recalculating. This function is useful when a lot of items are inserted into view in short time. When resumeLayout is called, all items will be inserted at once .
    @method suspendLayout
    @return {Window}
    @example
            list.native.suspendLayout();
            for (var i = 0; i &lt;100; i++) {
                items[i] = new ListViewItem(null,null,i.toString());
                list.add(items[i]);
            }
            list.native.resumeLayout();
    */
    function suspendLayout() { }


    /**
    Resume layer's recalculating.
    @method resumeLayout
    @return {Window}
    @example
            list.native.suspendLayout();
            for (var i = 0; i &lt;100; i++) {
                items[i] = new ListViewItem(null,null,i.toString());
                list.add(items[i]);
            }
            list.native.resumeLayout();
    */
    function resumeLayout() { }

    /**
    Perform (force) layer calculation.
    @method performLayout
    @return {Window}
    */
    function performLayout() { }

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
    Function scrolls elements to coordinates (dx and dy). However, this function scrolls only in adjusted set scroll mode (horizontal or vertical).
    @method scrollBy
    @param dx {View} Horizontal coordinate.
    @param dy {View} Vertical coordinates.
    @return {ScrollView}
    */
    function scrollBy(dx, dy) { }
    /**
    Function scrolls elements to coordinates (dx and dy). However, this function scrolls only in adjusted set scroll mode (horizontal or vertical).
    @method scrollBy
    @param x {View} Horizontal coordinate.
    @param y {View} Vertical coordinates.
    @return {ScrollView}
    */
    function scrollBy(dx, dy) { }

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
    X - coordinates of left border.
    @property left
    @type {Integer}
    */
    property left() { }

/**
    Y - coordinates of left border.
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
    Height of the object (in pixels).
    @property height
    @type {Integer}
    */
    property height() { }

/**
    Visibility of the object. True = visible, false = invisible. Default is visible.
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
    Gets or sets if the view's width is stretchable.

    * #both
    @property stretch
    @type {Symbol}
    */
    property stretch() { }

/**
    Scroll Mode:

    * #horz
    * #vert
    * #both
    * #none
    @property scrollMode
    @type {Symbol}
    */
    property scrollMode() { }

/**
    Dock Content:

    * #left-top
    * #top
    * #right-top
    * #right
    * #right-bottom
    * #bottom
    * #left-bottom
    * #left
    @property dockContent
    @type {Symbol}
    */
    property dockContent() { }

/**
   Gets horizontal scroll.
    @property scrollX
    @type {Integer}
    @readOnly
    */
    property scrollX() { }

/**
    Gets verical scroll.
    @property scrollY
    @type {Integer}
    @readOnly
    */
    property scrollY() { }

/**
    Returns true if scroll is in progress.
    @property isScrolling
    @type {Boolean}
    @readOnly
    */
    property isScrolling() { }

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

}
