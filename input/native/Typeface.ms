/**
The Typeface class specifies the typeface and intrinsic style of a font. This is used in the paint, along with optionally algorithmic settings like textSize, textSkewX, textScaleX, kFakeBoldText_Mask, to specify how text appears when drawn (and measured).Typeface objects are immutable, and so they can be shared between threads.
@class Typeface
@module core
*/
class Typeface
{

    /**
    Typeface's intrinsic style attributes.

    * #normal
    * #bold
    * #italic
    * #bold+italic
    @property style
    @type {Symbol}
    @readOnly
    */
    property style() { }


    /**
    True if style is the #bold.
    @property bold
    @type {Boolean}
    @readOnly
    */
    property bold() { }

    /**
    True if style is the #italic.
    @property italic
    @type {Boolean}
    @readOnly
    */
    property italic() { }

    /**
    Integer value for this typeface, unique for the underlying font data. This is never 0.
    @property uniqueId
    @type {Integer}
    @readOnly
    */
    property uniqueId() { }

    /**
    Creates new instance of Typeface class to the font that most closely matches the requested familyName and style.
    @param fromName {String} The name of the font family. Pass null as the familyName to return the default font for the requested style.
    @param style {Symbol} The style of the typeface.

    * #normal
    * #bold
    * #italic
    * #bold+italic
    @method fromName
    @return {Typeface} A new reference to the typeface that most closely matches the requested familyName and style (never returns null).
    @example
            // create paint object for text
            var paint = new Paint();
            paint.textSize = 40;
            // set diferent font
            paint.typeface = Typeface.fromName("FreeMono", #bold+italic);
    */
    function fromName(familyName, style) { }


}