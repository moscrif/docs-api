/**
Canvas encapsulates all states of drawing into a device (bitmap). This includes a reference to the device itself, and a stack of matrix/clip values.
    For any given draw call (e.g. drawRect), the geometry of the object being drawn is transformed by the concatenation of all the matrices in the stack.
    The transformed geometry is clipped by the intersection of all of the clips in the stack.
    While the Canvas hold the state of the drawing device, the state (style) of the object being drawn is held by Paint,
    which is provided as a parameter to each of the draw() methods. Paint holds attributes such as color, typeface, textSize, strokeWidth, shader (e.g. gradients, patterns), etc.
@class Canvas
@module core
*/
class Canvas
{

    /**
    This call saves the current matrix and clip information, and pushes a copy onto a private stack. Subsequent calls to translate, scale, rotate, skew, concat or clipRect, clipPath all operate on this copy. When the balancing call to restore() is made, this copy is deleted and the previous matrix/clip state is restored.
    @param saveflags=#matrixClip {Symbol} Save flags, the default is #matrixClip.

    * #matrix - Save the matrix state, restoring it on restore().
    * #clip - Save the clip state, restoring it on restore().
    * #hasAlphaLayer - The layer needs to support per-pixel alpha.
    * #fullColorLayer - The layer needs to support 8-bits per color component.
    * #clipToLayer - The layer should clip against the bounds argument.
    * #matrixClip
    * #ARGB_NoClipLayer
    * #ARGB_ClipLayer
    @method save
    @return {Canvas} Return instance of itself.
    @chainable
    @example
        canvas.drawText("Moscrif",System.width / 2, System.height / 4, new Paint());
        // save "normal" canvas setings
        canvas.save();
        // scale canvas
        canvas.scale(0.5,1);
        // draw scaled text
        canvas.drawText("Moscrif", System.width / 2, System.height / 2, new Paint());
        // restore saved setings
        canvas.restore();
        // draw unscaled text
        canvas.drawText("Moscrif", System.width / 2, 3 * System.height / 4, new Paint());
    */
    function save(saveflags = #matrixClip) { }

    /**
    This call balances a previous call to save(), and is used to remove all modifications to the matrix/clip state since the last save call. An error occurs if restore() is called more times than save().
    @method restore
    @chainable
    @return {Canvas} Return instance of itself.
    @example
        canvas.drawText("Moscrif",System.width / 2, System.height / 4, new Paint());
        //save "normal" canvas setings
        canvas.save();
        //scale canvas
        canvas.scale(0.5,1);
        //draw scaled text
        canvas.drawText("Moscrif",System.width / 2, System.height / 2, new Paint());
        //restore saved setings
        canvas.restore();
        //draw unscaled text
        canvas.drawText("Moscrif",System.width / 2, 3 * System.height / 4, new Paint());
    */
    function restore() { }

    /**
    Preconcat the current canvas with the specified translation.
    @method translate
    @param dx {Float} The distance to translate in X
    @param dy {Float} The distance to translate in Y
    @chainable
    @return {Boolean} Return instance of itself.
    @example
        app.onDraw = function(sender, canvas)
        {
            canvas.clear(0xff000000);
            // move center of canvas from left top corner to center of the center of screen
            canvas.translate(System.width / 2, System.height / 2);
            // draw bitmap to the center of screen
            canvas.drawBitmap(this._img, this._img.width / -2, this._img.height / -2);
        }
    */
    function translate(dx,dy) { }

    /**
    Preconcat the current canvas with the specified scale.
    @method scale
    @chainable
    @param sx {Float} The amount to scale in X
    @param sy {Float} The amount to translate in Y
    @return {Canvas} Return instance of itself.
    @example
        //draw normal text
        canvas.drawText("Moscrif",System.width / 2, System.height / 4, new Paint());
        //scale canvas
        canvas.scale(0.5,1);
        //draw scaled text
        canvas.drawText("Moscrif",System.width / 2, System.height / 2, new Paint());
    */
    function scale(sx, sy) { }

    /**
    Preconcat the current canvas with the specified rotation.
    @method rotate
    @chainable
    @param degrees {Float} The amount to rotate.
    @example
        // set center position
        var posx = System.width / 2;
        var posy = System.height / 2;
        
        // get text dimensions
        var (w,h) = paint.measureText("Moscrif");

        // 0°
        canvas.drawText("Moscrif", posx, posy, paint);

        canvas.rotate(90);
        // 90°
        canvas.drawText("Moscrif", posy, -1*posx + h, paint);

        canvas.rotate(90);
        // 180°
        canvas.drawText("Moscrif", -1*posx + h, -1*posy + h, paint);

        canvas.rotate(90);
        // 270°
        canvas.drawText("Moscrif", -1*posy + h, posx, paint);
    */
    function rotate(degrees) { }

    /**
    Preconcat the current canvas with the specified skew.
    @method skew
    @chainable
    @param sx {Float} The amount to skew in X
    @param sy {Float} The amount to skew in Y
    @return {Canvas} Return instance of itself.
    */
    function skew(sx, sy) { }

    /**
    Preconcat the current canvas with the specified matrix.
    @method concat
    @chainable
    @param matrix {Matrix} The matrix to preconcatenate with the current matrix
    @example
        app.onDraw = function(sender, canvas)
        {
            // create matrix
            var m = new Matrix();
            // apply more transformations (translate and rotation)
            m.setTranslate(System.width / 2, System.height / 2);
            // rotate 45° clockwise
            m.preRotate(45);
            // apply matrix to canvas
            canvas.concat(m);

            // draw bitmap
            canvas.drawBitmap(this._img, this._img.width / -2, this._img.height / -2);
        }
    */
    function concat(matrix) { }

    /**
    Modify the current clip with the specified rectangle.
    @method clipRect
    @chainable
    @param left {Integer} The rect to intersect with the current clip
    @param top {Integer} The rect to intersect with the current clip
    @param right {Integer} The rect to intersect with the current clip
    @param bottom {Integer} The rect to intersect with the current clip
    @param region_op {Symbol} The region operation to apply to the current clip.

    * #difference - Subtract the op region from the first region.
    * #intersect - Intersect the two regions.
    * #union - Union (inclusive-or) the two regions.
    * #xor - Exclusive-or the two regions.
    * #reverseDifference - Subtract the first region from the op region.
    * #replace - Replace the dst region with the op region.

    @return {Boolean} Return true if the resulting clip is non-empty.
    @example
        canvas.clipRect(System.width / 4, System.height / 4, 3 * System.width / 4, 3 * System.height / 4, #intersect );
        canvas.drawBitmap(this._img, 0, 0);
        canvas.clipRect(System.width / 4, System.height / 4, 3 * System.width / 4, 3 * System.height / 4, #difference );
        canvas.drawBitmap(this._img, 0, 0);
    */
    function clipRect(left, top, right, bottom, region_op = #intersect) { }

    /**
    Draw a series of points, interpreted based on the PointMode mode. For #lines mode, count/2 line segments are drawn. For #points mode, each point is drawn centered at its coordinate, and its size is specified by the paint's stroke-width. It draws as a square, unless the paint's cap-type is round, in which the points are drawn as circles.
    For #lines mode, each pair of points is drawn as a line segment, respecting the paint's settings for cap/join/width. For #polygon mode, the entire array is drawn as a series of connected line segments. Note that, while similar, #kLine and #kPolygon modes draw slightly differently than the equivalent path built with a series of moveTo, lineTo calls, in that the path will draw all of its contours at once, with no interactions if contours intersect each other (think XOR xfermode). drawPoints always draws each element one at a time.    @method drawPoints

    @method drawPoints
    @chainable
    @param pointMode {Symbol} The region operation to apply to the current clip.

    * #points - DrawPoints draws each point separately.
    * #lines - DrawPoints draws each pair of points as a line segment.
    * #polygon - DrawPoints draws the array of points as a polygon.

    @param points {Array} Array of points to draw
    @param paint {Paint} The paint used to draw the points
    @example
        canvas.clear(0xffffffff);
        var paint = new Paint();
        paint.strokeWidth = 15;
        paint.strokeCap = #round;
        
        var pts = new Array({x: 100, y: 100}, {x: 150, y: 150}, {x: 50, y: 150});
        canvas.drawPoints(#points, pts, paint);
        
        pts = new Array({x: 100, y: 200}, {x: 150, y: 250}, {x: 50, y: 250}, {x: 100, y: 200});
        canvas.drawPoints(#polygon, pts, paint);
        
        pts = new Array({x: 100, y: 300}, {x: 150, y: 350}, {x: 150, y: 350}, {x: 50, y: 350}, {x: 50, y: 350}, {x: 100, y: 300});
        canvas.drawPoints(#lines, pts, paint);
    */
    function drawPoints(pointMode, points, paint) { }

    /**
    Draw a line segment with the specified start and stop x,y coordinates, using the specified paint.
    __NOTE:__ since a line is always "framed", the paint's Style is ignored.
    @method drawLine
    @param x0 {Float} The x-coordinate of the start point of the line.
    @param y0 {Float} The y-coordinate of the start point of the line.
    @param x1 {Float} The x-coordinate of the end point of the line.
    @param y1 {Float} The y-coordinate of the end point of the line.
    @param paint {Paint} The region operation to apply to the current clip.
    @return {Canvas} Return instance of itself.
    @example
            canvas.clear(0xffffffff);
            var paint = new Paint();
            canvas.drawLine(100, 100, 200, 200, paint);
    */
    function drawLine(x0, y0, x1, y1, paint) { }

  /**
    Draw the specified rectangle using the specified paint. The rectangle will be filled or stroked based on the Style in the paint.
    @method drawRect
    @chainable
    @param left {Integer} Left border of the rect to be drawn
    @param top {Integer} Top border of the rect to be drawn
    @param right {Integer} Right border of the rect to be drawn
    @param bottom {Integer} Bottom border of the rect to be drawn
    @param paint {Paint} The paint used to draw the rect.
    @return {Canvas} Return instance of itself.
    @example
        canvas.clear(0xffffffff);
        var paint = new Paint();
        canvas.drawRect(100, 100, 200, 200, paint);
    */
    function drawRect(left, top, right, bottom, paint) { }

  /**
    Draw the specified oval using the specified paint. The oval will be filled or framed based on the Style in the paint.
    @method drawOval
    @chainable
    @param left {Integer} Left bound of the rect to be drawn
    @param top {Integer} Top bound of the rect to be drawn
    @param right {Integer} Right bound of the rect to be drawn
    @param bottom {Integer} Bottom bound of the rect to be drawn
    @param paint {Paint} The paint used to draw the oval.
    @return {Canvas} Return instance of itself.
    @example
        canvas.clear(0xffffffff);
        var paint = new Paint();
        canvas.drawOval(100, 100, 200, 200, paint);
    */
    function drawOval(left, top, right, bottom, paint) { }

  /**
    Draw the specified circle using the specified paint. If radius is <= 0, then nothing will be drawn. The circle will be filled or framed based on the Style in the paint.
    @method drawCircle
    @chainable
    @param cx {Float} X-coordinate of the center of the cirle to be drawn
    @param cy {Float} Y-coordinate of the center of the cirle to be drawn
    @param radius {Float} Radius of the cirle to be drawn
    @param paint {Paint} The paint used to draw the circle.
    @return {Canvas} Return instance of itself.
    @example
        canvas.clear(0xffffffff);
        var paint = new Paint();
        canvas.drawRect(100, 100, 50, paint);
    */
    function drawCircle(cx, cy, radius, paint) { }

  /**
    Draw rectangle with rounded corners. The rectangle will be filled or framed based on the Style in the paint.
    @method drawRoundRect
    @chainable
    @param left {Integer} Left bound of the round rectangle to be drawn
    @param top {Integer} Top bound of the round rectangle to be drawn
    @param right {Integer} Right bound of the round rectangle to be drawn
    @param bottom {Integer} Bottom bound of the round rectangle to be drawn
    @param rx {Integer} X-radius of the oval used to round the corners
    @param ry {Integer} Y-radius of the oval used to round the corners
    @param paint {Paint} The paint used to draw the circle.
    @return {Canvas} Return instance of itself.
    @example
            canvas.clear(0xffffffff);
            var paint = new Paint();
            canvas.drawRoundRect(100, 100, 200, 200, 10, 10, paint);
    */
    function drawRoundRect(left, top, right, bottom, rx, ry, paint) { }

  /**
    Draw the specified path using the specified paint. The path will be filled or framed based on the Style in the paint.
    @method drawPath
    @chainable
    @param path {Path} The path to be drawn.
    @param paint {Paint} The paint used to draw the path .
    @return {Canvas} Return instance of itself.
    @example
        canvas.clear(0xffffffff);
            // get vectors coordinates
        var (l, t, r, b) = this._path.getBounds();
        var matrix = new Matrix();
            // set scale
        var scale = 0.5*System.width / Math.abs(r - l);
        matrix.setScale(scale, scale);
            // apply scale to vector
        this._path.transform(matrix);
            // get new image dimensions
        (l, t, r, b) = this._path.getBounds();
        
            // move image to the center of screen
        this._path.offset(-1*l + (System.width - Math.abs(r - l)) / 2.0, -1*t + (System.height - Math.abs(t - b)) / 2.0);
        
            // draw vector
        canvas.drawPath(this._path, new Paint());
    */
    function drawPath(path, paint) { }

  /**
    Draw the specified bitmap, with its top/left corner at (x,y), using the specified paint in its original dimension.
    __Note:__ if the paint contains a maskfilter that generates a mask which extends beyond the bitmap's original width/height, then the bitmap will be drawn as if it were in a Shader with CLAMP mode. Thus the color outside of the original width/height will be the edge color replicated.
    @method drawBitmap
    @chainable
    @param bitmap {Bitmap} The bitmap to be drawn
    @param left {Float} The position of the left side of the bitmap being drawn
    @param top {Float} The position of the top side of the bitmap being drawn
    @param [paint] {Paint} The paint used to draw the bitmap (default NULL)
    @return {Canvas} Return instance of itself.
    @example
        // load bitmap file
        var bitmap = Bitmap.fromFile("dat://moscrif.jpg");

        // draw bitmap in original resolution to the midle of screen
        canvas.drawBitmap(bitmap, System.width / 2 - bitmap.width / 2, System.height / 2 - bitmap.height / 2);
    */
    function drawBitmap(bitmap, left, top[, paint]) { }

  /**
    Draw the source rectangle from source bitmap file to the destination rectangle on the canvas.
    __Note:__ if the paint contains a maskfilter that generates a mask which extends beyond the bitmap's original width/height, then the bitmap will be drawn as if it were in a Shader with CLAMP mode. Thus the color outside of the original width/height will be the edge color replicated.
    @method drawBitmapRect
    @chainable
    @param bitmap {Bitmap} The bitmap to be drawn.
    @param srcLeft {Integer} specify the subset of the bitmap to be drawn.
    @param srcTop {Integer} specify the subset of the bitmap to be drawn.
    @param srcRight {Integer} specify the subset of the bitmap to be drawn.
    @param srcBottom {Integer} specify the subset of the bitmap to be drawn.
    @param dstLeft {Integer} The destination rectangle where the scaled/translated image will be drawn.
    @param dstTop {Integer} The destination rectangle where the scaled/translated image will be drawn.
    @param dstRight {Integer} The destination rectangle where the scaled/translated image will be drawn.
    @param dstRight {Integer} The destination rectangle where the scaled/translated image will be drawn.
    @param [paint] {Paint} The paint used to draw the bitmap, or null.
    @return {Canvas} Return instance of itself.
    @example
        //load bitmap file
        var bitmap = Bitmap.fromFile("dat://moscrif.jpg");

        //draw only left half of image to the whole screen
        canvas.drawBitmapRect(bitmap, 0, 0, bitmap.width/2, bitmap.height, 0, 0, bitmap.width, System.height);
    */
    function drawBitmapRect(bitmap, srcLeft, srcTop, srcRight, srcBottom, dstLeft, dstTop, dstRight, dstBottom [, paint]) { }


  /**
    Function draws bitmap to the canvas accoridng to current Matrix. The Matrix contains coordinates about position, rotation, scale etc...
    @method drawBitmapMatrix
    @chainable
    @param bitmap {Bitmap} The bitmap to be drawn.
    @param matrix {Matrix} Matrix included source and target coordinates.
    @param [paint] {Paint} The paint used to draw the bitmap, or null.
    @return {Canvas} Return instance of itself.
    @example
        // load bitmap file
        var bitmap = Bitmap.fromFile("dat://moscrif.jpg");

        // create rotate matrix
        var matrix = new Matrix();
        matrix.setRotate(45);

        // draw bitmap rotated in 45° CW
        canvas.drawBitmapMatrix(bitmap, matrix);
    */
    function drawBitmapMatrix(bitmap, matrix [, paint]) { }

  /**
    Draw bitmap to the canvas. The bitmap is resized only on the centre.
        It is suitable mostly for background for Buttons, TextBoxes and other UI elements, because it saves the image's coordinates in corners.
    @method drawBitmapNine
    @chainable
    @param bitmap {Bitmap} The bitmap to be drawn.
    @param left {Integer} Left position of image.
    @param top {Integer} Top position of image.
    @param right {Integer} Right position of image.
    @param bottom {Integer} Bottom position of image.
    @param [paint] {Paint} The paint used to draw the bitmap, or null.
    @return {Canvas} Return instance of itself.
    @example
        // load bitmap file
        var bitmap = Bitmap.fromFile("dat://moscrif.jpg");

        // draw bitmap to the whole screen
        canvas.drawBitmapNine(bitmap, 0, 0, System.width, System.height);
    */
    function drawBitmapNine(bitmap, left, top, right, bottom [,paint = NULL) { }

  /**
    Draw text to x, y coordinates.
    @method drawText
    @chainable
    @param text {String} The text to be drawn.
    @param x {Integer} X coordinate of left bottom corner.
    @param y {Integer} Y coordinate of left bottom corner.
    @param paint {Paint} The paint used to draw the text, or null.
    @return {Canvas} Return instance of itself.
    @example
        //create paint object for text
        var paint = new Paint();
        // set color and size of text
        paint.color = 0xffff0000;
        paint.textSize = 25;

        // get dimensions of text
        var (w, h) = paint.measureText("Moscrif");
        // draw text to the center of screen
        canvas.drawText("Moscrif", (System.width - w) / 2, (System.height - h) / 2,paint);
    */
    function drawText(text, x, y, paint) { }

  /**
    Draw text into the box. The text is cut off by the box dimensions
    @method drawTextBox
    @chainable
    @param text {String} The text to be drawn.
    @param left {Integer} Left border of the textBox.
    @param top {Integer} Top border of the textBox.
    @param right {Integer} Right border of the textBox.
    @param bottom {Integer} Bottom border of the textBox.
    @param paint {Paint} The paint used to draw the text.
    @param [align] {Symbol} Symbol that specifies the vertical text align.
    * #start
    * #center
    * #end

    @return {Canvas} Return instance of itself.
    @example
        canvas.clear(0xffffffff);
        //create paint object for text
        var paint = new Paint();
        // set color and size of text
        paint.color = 0xffff0000;
        paint.textSize = 25;
        
        // draw text
        canvas.drawTextBox("Moscrif", 0, 0, System.width, System.height, paint, #center);
    */
    function drawTextBox(text, left, top, right, bottom, paint [, align]) { }

    /**
    Creates new canvas for offscreen drawing.
    @method fromBitmap
    @param bitmap {Bitmap}
    @returns {Canvas} New instance of Canvas object.
    @static
    @example
        game.onStart = function()
        {
            // creates offscreen bitmap
            this._bmp = Bitmap.fromRect(200, 100);
            // creates canvas for the ofscreen bitmap
            this._canvas = Canvas.fromBitmap(this._bmp);
            // draws to bitmap - can be something more complex
            this._canvas.drawLine(0, 0, 100, 100, new Paint());
        }
        game.onDraw = function(canvas)
        {
            canvas.clear(0xffffffff);
            // draws the offscreen drawn bitmap
            canvas.drawBitmap(this._bmp, 100, 100);
        }
    */
    function fromBitmap(bitmap);
}