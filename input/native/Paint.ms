/**
The Paint class holds the style and color information about how to draw geometries, text and bitmaps.
@class Paint
@module core
*/
class Paint
{
    /**
    Object constructor creates new Paint object.
    @method this
    */
    function this() { }

    /**
    Restores the paint to its initial settings.
    @method reset
    @example
        var paint = new Paint();
        // 12
        console<<paint.textSize<<"\n";
        paint.textSize = 25;
        // 25
        console<<paint.textSize<<"\n";
        // restore default settings
        paint.reset()
        // 12
        console<<paint.textSize<<"\n";
    */
    function reset() { }

    /**
    Enable or disable antialiasing.  Antialiasing is the technique of minimizing the distortion artifacts known as aliasing when representing a high-resolution image at a lower resolution.
    @property antiAlias
    @type {Boolean}
    */
    property antiAlias() { }

    /*
    Enable subpixel text rendering. "Subpixel rendering is a way to increase the apparent resolution of a computer's liquid crystal display (LCD) or organic light-emitting diode (OLED) display by rendering pixels to take into account the screen type's physical properties. It takes advantage of the fact that each pixel on a colour LCD is actually composed of individual red, green, and blue or other color subpixels to anti-alias text with greater detail or to increase the resolution of all image types on layouts which are specifically designed to be compatible with subpixel rendering." Source: wikipedia.org
    @property subpixelText
    @type {Boolean}
    */
    property subpixelText() { }

    /**
    Create underline text effect.
    @property underlineText
    @type {Boolean}
    */
    property underlineText() { }

    /**
    Enable strikethrough text effect.
    @property strikeThruText
    @type {Boolean}
    */
    property strikeThruText() { }

    /**
    If fakeBoldText effect is set to true, the text is drawen with bold style.
    @property fakeBoldText
    @type {Boolean}
    */
    property fakeBoldText() { }

    /**
    Setting or returning paint's style, used for controlling how primitives' geometries are interpreted.
    Bitmaps are always drawn in "fill", and lines are always drawn in "stroke". Note: strokeandfill implicitly draws the result with SkPath::kWinding_FillType, so if the original path is even-odd, the results may not appear the same as if it was drawn twice, filled and then stroked.

    * #fill - fill the geometry.
    * #stroke - stroke the geometry.
    * #stroke+fill - fill and stroke the geometry.
    @property style
    @type {Symbol}
    */
    property style() { }

    /**
    The property sets color used by the paint object. The color is defined in hexadecimal formats (from 00 to FF) for four channels in order: alpha, red, green, blue.
    @property color
    @type {Float}
    @example
        var paint = new Paint();
        paint.color = 0xffffffff; // white
        paint.color = 0xffff0000; // red
        paint.color = 0xff00ff00; // green
        paint.color = 0xff0000ff; // blue
        paint.color = 0xff000000; // black
        paint.color = 0x00000000; // transparent
    */
    property color() { }

    /**
    Alpha level, affects transparency. Value 0 means fully transparent, value 255 -> no transparent
    @property alpha
    @type {Integer}
    */
    property alpha() { }


    /**
    Width for stroking. A value of 0 strokes in hairline mode. Hairlines always draw 1-pixel wide, regardless of the matrix.
    @property strokeWidth
    @type {Float}
    */
    property strokeWidth() { }

    /**
    Paint's stroke cap type, controlling how the start and end of stroked lines and paths are treated.
    This is the treatment that is applied to the beginning and end of each non-closed contour (e.g. lines).

    * #butt - begin/end contours with no extension.
    * #round - begin/end contours with a semi-circle extension.
    * #square - begin/end contours with a half square extension.
    @property strokeCap
    @type {Symbol}
    */
    property strokeCap() { }

    /**
    Paint's stroke join type.
    This is the treatment that is applied to corners in paths and rectangles

    * #miter - connect path segments with a sharp join.
    * #round - connect path segments with a round join.
    * #bevel - connect path segments with a flat bevel join.
    @property strokeJoin
    @type {Symbol}
    */
    property strokeJoin() { }

    /**
    Shader object. Pass NULL to clear any previous shader. As a convenience, the parameter passed is also returned. If a previous shader exists, its reference count is decremented. If shader is not NULL, its reference count is incremented.
    @property shader
    @type {Shader}
    @example
        //create new instance of shader class. For more information about parameters see Shader class
        var shader = Shader.linear(pts, clrs, pos,0);

        //create new instance of Paint class
        this.paint = new Paint();

        //set shader
        this.paint.shader = shader;
    */
    property shader() { }

    /**
    Color filter used to apply grayscale or colloring effect.
    @property colorFilter
    @type {ColorFilter}
    @example
        //create color filter for grayscale images
        var colorFilter = ColorFilter.grayscale();

        paint.colorFilter = colorFilter;

        //draw bitmap converted to grayscale
        canvas.drawBitmap(bitmap, 0, 0, paint);
    */
    property colorFilter() { }

    /**
    Paint's maskfilter object. Pass NULL to clear any previous maskfilter. As a convenience, the parameter passed is also returned.
    @property maskFilter
    @type {MaskFilter}
    @example
            //create mask filter
            var maskFilter = MaskFilter.blur(10, #normal, #none);

            //apply mask filter to paint object
            paint.maskFilter = maskFilter;

            canvas.drawBitmap(bitmap, 0, 0, paint);
    */
    property maskFilter() { }

    /**
    Typeface object. The typeface object identifies which font to use when drawing or measuring text.
    @property typeFace
    @type {Typeface}
    */
    property typeFace() { }

    /**
    Paint's Align value for drawing text. This property is used by Canvas.drawTextBox function.
    This is the treatment that is applied to corners in paths and rectangles

    * #left
    * #center
    * #right
    @property textAlign
    @type {Symbol}
    @example
        canvas.clear(0xffffffff);

        // create paint object for text
        var paint = new Paint();
        paint.textSize = 40;
        paint.textAlign = #center;
        // set diferent font
        paint.typeface = Typeface.fromName("FreeMono", #bold+italic);

        // draw text to the center of screen
        canvas.drawTextBox("Moscrif", 0, 0, System.width, System.height, paint, #center);
    */
    property textAlign() { }

    /**
    Paint's text size.
    @property textSize
    @type {Float}
    */
    property textSize() { }

    /**
    Return the recommend line spacing. This will be Descent - Ascent + Leading.
    @property fontSpacing
    @type {Float}
    @readOnly
    */
    property fontSpacing() { }

    /**
    The greatest distance above the baseline for any glyph (will be <= 0).
    @property fontTop
    @type {Float}
    @readOnly
    */
    property fontTop() { }

    /**
    The recommended distance above the baseline (will be <= 0).
    @property fontAscent
    @type {Float}
    @readOnly
    */
    property fontAscent() { }

    /**
    The recommended distance below the baseline (will be >= 0).
    @property fontDescent
    @type {Float}
    @readOnly
    */
    property fontDescent() { }

    /**
    The greatest distance below the baseline for any glyph (will be >= 0).
    @property fontBottom
    @type {Float}
    @readOnly
    */
    property fontBottom() { }

    /**
    The recommended distance to add between lines of text (will be >= 0).
    @property fontLeading
    @type {Float}
    @readOnly
    */
    property fontLeading() { }

    /**
    The average charactor width (>= 0)
    @property fontAvgCharWidth
    @type {Float}
    @readOnly
    */
    property fontAvgCharWidth() { }

    /**
    The minimum bounding box x value for all glyphs.
    @property fontXMin
    @type {Float}
    @readOnly
    */
    property fontXMin() { }

    /**
    The maximum bounding box x value for all glyphs.
    @property fontXMax
    @type {Float}
    @readOnly
    */
    property fontXMax() { }

    /**
    The height of an 'x' in px, or 0 if no 'x' in face.
    @property fontXHeight
    @type {Float}
    @readOnly
    */
    property fontXHeight() { }

    /**
    Return the width and the height of the text.
    @method measureText
    @param text {String} The text string.
    @return {Multivalue} The size of the text.
    @example
        var paint = new Paint();
        
        //get text dimensions
        var (w, h) = paint.measureText("Moscrif");
        
        //draw text to the midle of the screen. Position of left bottom point is calculations using tet dimension
        canvas.drawText("Moscrif", System.width / 2 - w / 2, System.height / 2 - h / 2, paint);
    */
    function measureText(text) { }


}