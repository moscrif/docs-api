/**
This class arranges components in a vertical (or horizontal) strip aligning them at right, left or centered, and/or filling them to take up any extra vertical or horizontal space.
@class Moscrif.StackLayout
@module ui
@example
    var layout = new Moscrif.StackLayout();
    layout.orientation = #vert;
    layout.pack = #start;
    layout.align = #stretch
    layout.spacer = SPACE_WIDTH;
    
    container = new Moscrif.View("container");
    container.layout = layout;
    …
    var itemA = new Moscrif.View("itemA");
    itemA.stretch = #both;
    container.add(itemA);
    
    var itemB = new Moscrif.View("itemB");
    itemB.stretch = #both;
    container.add(itemB);
*/
class Moscrif.StackLayout
{

    /**
    Constucts new StackLayout object.
    @method this
    @example
        var layout = new Moscrif.StackLayout();
        layout.setMargin(10, 50, 10, 50);
        layout.align = #stretch
        
        container = new Moscrif.View("container");
        container.layout = layout;
        app.add(container);
        
        var item = new Moscrif.View("item");
        item.stretch = #both;
        container.add(item);
    */
    function this() { }

    /**
    Sets the margin around inserted elements.
    @method setMargin
    @chainable
    @param left {Symbol} Left margin.
    @param top {Symbol} Top  margin.
    @param right {Symbol} Right margin.
    @param bottom {Symbol} Bottom  margin.
    @example
        var layout = new Moscrif.StackLayout();
        layout.setMargin(10, 50, 10, 50);
        layout.orientation = #vert;
        layout.pack = #start;
        layout.align = #stretch
        
        container = new Moscrif.View("container");
        container.layout = layout;
        app.add(container);
        
        var item = new Moscrif.View("item");
        item.stretch = #both;
        container.add(item);
    */
    function setMargin(left, top, right, bottom) { }

/**
    Manages positions of embedded elements. For supported symbols see StackLayout's orientation symbols.

    * #horz
    * #vert
    @property orientation
    @type {Symbol}
    */
    property orientation() { }

/**
    Manages horizontal positions of embedded elements. See StackLayout's pack symbols.

    * #start
    * #center
    * #end
    @property pack
    @type {Symbol}
    */
    property pack() { }

/**
    Sets vertical alignment of elements. For supported symbols see StackLayout's align symbols.

    * #start
    * #center
    * #end
    * #stretch
    @property align
    @type {Symbol}
    */
    property align() { }

/**
    Determines gaps between elements.
    @property spacer
    @type {Integer}
    */
    property spacer() { }
}