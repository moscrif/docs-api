/**

This class implements text viewer and text editor.
@class TextView
@module ui
*/
class TextView
{

    /**
    Create new TextView object.
    @method this
    @param [name=null] {String} Name of the object. Pass null for unnamed control.
    @return {TextView}
    */
    function this([name=null]) { }

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
    Function sets focus to the TextView object.
    @method setFocus
    @return {Boolean}
    */
    function setFocus() { }

    /**
    Returns true if TextView has focus. Otherwise, function returns false.
    @method hasFocus
    @return {Boolean}
    */
    function hasFocus() { }

    /**
    Remove object from superior view object (application, form etc).
    @method detach
    */
    function detach() { }

/**
    Sends request of cursor key to TextView.
    @event doCursorKey
    @param key {Symbol} Key symbols:

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
    function doCursorKey(sender, key) { }

    /**
    Remove object from superior view object (application, form etc).
    @param char {Integer} (Uni)code of char to be inserted.
    @method insert
    */
    function insert(char) { }

    /**
    Replace char at current position in TextView by new char.
    @param key {Integer} (Uni)code of new char to be replaced.
    @method replace
    */
    function replace(key) { }

/**
    Backspace function removes char at the current position. This function is usually used as a reaction on backspace key.
    @method replace
    */
    function backspace() { }

/**
    Name of the TextView object.
    @property name
    @type {String}
    */
    property name() { }

/**
    Gets or sets read-only flags of this TextView.
    @property readOnly
    @type {Boolean}
    */
    property readOnly() { }

/**
    Gets or sets multi-line flags of this TextView.
    @property multiLine
    @type {Boolean}
    */
    property multiLine() { }

/**
    Gets or sets auto-size flag of this TextView:

    * #fixed
    * #width
    * #height
    @property autoSize
    @type {Symbol}
    */
    property autoSize() { }

/**
    Determines horizontal text position.

    * #left
    * #center
    * #right
    @property horzAlign
    @type {Symbol}
    */
    property horzAlign() { }

   /**
    X - coordinates of the TextView's location.
    @property left
    @type {Integer}
    */
    property left() { }

/**
    Y - coordinates of the TextView's location.
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
    Visibility of the object. True = visible, false = invisible
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
    * #hor
    * #vert
    * #both
    @property stretch
    @type {Symbol}
    */
    property stretch() { }

/**
    Text in the object.
    @property text
    @type {String}
    */
    property text() { }

/**
    Paint object used to draw text inside the object. Thanks to this property, developer can set text size, color, font etc.
    @property paint
    @type {Paint}
    */
    property paint() { }

/**
    Gets position pair (line, char).
    @property cursor
    @type {Multivalue}
    @readOnly
    */
    property cursor() { }

/**
    Cursor position in text (from the beginning).
    @property cursorPos
    @type {Integer}
    @readOnly
    */
    property cursorPos() { }


/**
    Four values (left, top, right, bottom), represents cursor position and size.
    @property cursorRect
    @type {Multivalue}
    @readOnly
    */
    property cursorRect() { }

/**
    Width of the left and right margin.
    @property marginX
    @type {Integer}
    @readOnly
    */
    property marginX() { }

/**
   Width of the top and bottom margin.
    @property marginY
    @type {Integer}
    @readOnly
    */
    property marginY() { }

/**
    Callback function, which is which is called from the object every 25ms.
    @event onProcess
    */
    property onProcess() { }

/**
     This event occurs, when it is necessary to redraw object.
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