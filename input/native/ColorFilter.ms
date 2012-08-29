/**
Manages drawing of color in bitmap file. This object is usually set in Paint object.
@class ColorFilter
@module graphics
@example
        var paint = new Paint();
        // create color filter for grayscale images
        var colorFilter = ColorFilter.grayscale();
        // apply color filter to the paint object
        paint.colorFilter = colorFilter;

        // load bitmap file
        var bitmap = Bitmap.fromFile("dat://moscrif.jpg");
        
        // draw bitmap converted to grayscale
        canvas.drawBitmap(bitmap, System.width / 2 - bitmap.width / 2, System.height / 2 - bitmap.height / 2, paint);
*/
class ColorFilter
{

    /**
    If this filter is used, bitmap is drawn in grayscale colors.
    @method grayscale
    @static
    @return {ColorFilter} New ColorFilter object.
    @example
            var paint = new Paint();
            // create MaskFilter and apply it to the paint object
            paint.colorFilter = ColorFilter.grayscale();
            // use paint object with applied ColorFilter to draw grayscaled bitmap
            canvas.drawBitmap(this._img, 0, 0, paint);
    */
    function grayscale() { }

    /**
    Create a colorfilter that multiplies the RGB channels by one color, and then adds a second color, pinning the result for each component to [0..255]. The alpha components of the mul and add arguments are ignored.
    @method lighting
    @static
    @param mul {Integer} The color of the multiplication.
    @param add {Integer} The color to the add.
    @return {ColorFilter} New instance of of ColorFilter class.
    @example
             var paint = new Paint();
            // create MaskFilter and apply it to the paint object
            paint.colorFilter = ColorFilter.lighting(250, 0xff00ff00);
            // use paint object with applied ColorFilter to draw bitmap
            canvas.drawBitmap(this._img, 0, 0, paint);
    */
    function lighting(mul, add) { }


}