/**

Shader is the based class for objects that return horizontal spans of colors during drawing.
A subclass of Shader is installed in a Paint calling paint.shader = shader.
After that any object (other than a bitmap) that is drawn with that paint will get its color(s) from the shader.
@class Shader
@module graphics
*/
class Shader
{

    /**
    This function creates a linear gradient.
    @method linear
    @static
    @param pts {Object} The start and end points for the gradient.
    @param clrs {Array} The array of colors, to be distributed between the two points.
    @param pos {Array} Array of float values, or NULL, of the relative position of each corresponding color in the colors array. If this is NULL, the colors are distributed evenly between the start and end point. If this is not null, the values must begin with 0, end with 1.0, and intermediate values must be strictly increasing.
    @param mode {Symbol} Intege current version this parameter is ignored. It cancel be for example null.
    @return {Shader} Shader object, which creates linear gradient.
    @example
            this._path = Path.fromSVG("M1....8.63z");
            
            // resize and place path ...
            
            // create paint object
            var paint = new Paint();
            var pts = {
                        start :
                        {
                            x: System.width / 2,
                            y : System.height / 4,
                        },
                        end :
                        {
                            x: System.width / 2,
                            y : 3 * System.height / 4,
                        }
                      }
            var clrs = new Array(0xffff0000, 0xff00ff00, 0xff0000ff);
            var pos = new Array(0.2, 0.5, 0.8);
            paint.shader = Shader.linear(pts, clrs, pos, 0);
            // draw vector
            canvas.drawPath(this._path, paint);
    */
    function linear(pts, clrs, pos, mode) { }

   /**
    This function creates a sweep gradient.
    @method sweep
    @static
    @param cx {Integer} The X coordinate of the center of the sweep.
    @param cy {Integer} The Y coordinate of the center of the sweep.
    @param clrs {Array} The array[count] of colors, to be distributed around the center.
    @param pos {Array} The array of float values, or NULL, of the relative position of each corresponding color in the colors array.

    * If this is NULL, the the colors are distributed evenly between the center and edge of the circle.
    * If this is not null, the values must begin with 0, end with 1.0, and intermediate values must be strictly increasing.
    @return {Shader} hader object, which creates sweep gradient.
    @example
            this._path = Path.fromSVG("M1....8.63z");
            
            // resize and place path ..
            
            // create paint object
            var paint = new Paint();
            var pts = {
                        start :
                        {
                            x: System.width / 2,
                            y : System.height / 4,
                        },
                        end :
                        {
                            x: System.width / 2,
                            y : 3 * System.height / 4,
                        }
                      }
            var clrs = new Array(0xffff0000, 0xff00ff00, 0xff0000ff);
            var pos = new Array(0.0, 0.5, 1.0);
            paint.shader = Shader.sweep(System.width / 2, System.height / 2, clrs, pos);
            // draw vector
            canvas.drawPath(this._path, paint);
    */
    function sweep(cx, cy, clrs, pos) { }

  /**
    Call this to create a new shader that will draw with the specified bitmap.
    @method bitmap
    @static
    @param fileName {String} The bitmap to use inside the shader.
    @param tileModeX {Symbol} The tiling mode to use when sampling the bitmap in the x-direction. For supported modes see Gradient modes.

    * #clamp - Draw bitmap only ones.
    * #repeat - Repeat bitmap more times.
    * #mirror - Repeat bitmap more times, but mirror turned.
    @param tileModeY {Symbol} The tiling mode to use when sampling the bitmap in the y-direction. For supported modes see Gradient modes.

    * #clamp - Draw bitmap only ones.
    * #repeat - Repeat bitmap more times.
    * #mirror - Repeat bitmap more times, but mirror turned.
    @return {Shader} hader object, which creates sweep gradient.
    @example
            this._path = Path.fromSVG("M1....8.63z");

            // resize and place path ...

            // create paint object
            var paint = new Paint();
            paint.shader = Shader.bitmap("app://img.png", #clamp, #clamp);
            // draw vector
            canvas.drawPath(this._path, paint);
    */
    function bitmap(fileName, tileModeX, tileModeY) { }

 /**
    Set the shader's local matrix.
    @method setLocalMatrix
    @param localMatrix {Matrix} The shader's new local matrix.
    */
    function setLocalMatrix(localMatrix) { }

 /**
    Get the shader's local matrix.
    @method setLocalMatrix
    @return {Matrix} Shader's local matrix
    */
    function getLocalMatrix() { }

 /**
    Reset the shader's local matrix to identity.
    @method resetLocalMatrix
    */
    function resetLocalMatrix() { }


}