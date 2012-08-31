/**
MaskFilter is the base class for object that perform transformations on an alpha-channel mask before drawing it. A subclass of MaskFilter may be installed into a Paint.
Once there, each time a primitive is drawn, it is first scan converted into a #kA8_Format mask, and handed to the filter, calling its filterMask() method. If this returns true, then the new mask is used to render into the device.
@class MaskFilter
@module core
*/
class MaskFilter
{

    /**
    @method blur
    @param radius {Integer} The radius to extend the blur from the original mask. Must be > 0.
    @param styleSymbol {Symbol} The BlurStyle to use.

    * #normal
    * #solid
    * #outer
    * #inner

    @param flagsSymbol {Symbol} Flags to use - defaults to none.

    * #none
    * #ignoreTransform
    * #all
    @return {MaskFilter} Returns new instance offset MaskFilter class.
    @example
            app.onDraw = function(sender, canvas)
            {
                var paint = new Paint();
                // create MaskFilter and apply it to the paint object
                paint.maskFilter = MaskFilter.blur(100, #inner);
                // use paint object with applied MaskFilter to draw bitmap
                canvas.drawBitmap(this._img, 0, 0, paint);
            }
    */
    function blur(radius, styleSymbol, flagsSymbol) { }


}