/**

The Path class encapsulates compound (multiple contour) geometric paths consisting of straight line segments, quadratic curves, and cubic curves. This class manages operations with vector graphics.
@class Path
@module graphics
*/
class Path
{

    /**
    Object constructor creates new Path object.
    @method this
    @return {Path} New instance of Path class.
    */
    function this() { }

    /**
    Loads vector graphics from SVG string.
    @param svg {String} SVG string - XML-based format for describing two-dimensional vector graphics.
    @method fromSVG
    @return {Path} .
    @example
            //create instance of Path class and load information from SVG
            var path = Path.fromSVG("M 538 60.03125 C 534.691 ... 538 62.03125 z");

            //draw
            canvas.drawPath(path, new Paint());
    */
    function fromSVG(svg) { }

    /**
    Transform the points in this path by matrix.
    @param matrix {Matrix} The matrix to apply to the path.
    @method transform
    @return {Path} .
    @example
            // get vectors coordinates
            var (l, t, r, b) = this._path.getBounds();

            // create transform matrix
            var matrix = new Matrix();

            // set scale
            var scale = 0.5*System.width / Math.abs(r - l);
            matrix.setScale(scale, scale);

            // apply scale to vector (resize it)
            this._path.transform(matrix);
    */
    function transform(matrix) { }

    /**
    Offset the path by (dx, dy).
    @param dx {Float} The amount in the X direction to offset the entire path..
    @param dy {Float} The amount in the y direction to offset the entire path..
    @method offset
    @return {Path} .
    @example
            // create new instance of Path class
            this._path = new Path();
            // create house :) in left top border
            this._path.moveTo(0, 30);
            this._path.lineTo(0, 130);
            this._path.lineTo(100, 130);
            this._path.lineTo(100, 30);
            this._path.lineTo(000, 30);
            this._path.lineTo(50, 0);
            this._path.lineTo(100, 30);
            
            // move them to the center of screen
            var (l, t, r, b) = this._path.getBounds();
            this._path.offset((System.width - (r - l)) / 2, (System.height - (b - t)) / 2);
            
            ....onDraw = function(sender, canvas)
            {
                canvas.clear(0xffffffff);
            
                // draw path
                var paint = new Paint();
                paint.style = #stroke;
                canvas.drawPath(this._path, paint);
            }
    */
    function offset(dx, dy) { }

    /**
    Close the current contour. If the current point is not equal to the first point of the contour, a line segment is automatically added.
    @method close
    @example
            // create new instance of Path class
            this._path = new Path();
            // draw arc. Arc is bounded by rect (100, 100, 200, 200), starts at 90°and ends at 270°
            this._path.arcTo(100, 100, 200, 200, 90, 230, true);
            this._path.close();

            ....onDraw = function(sender, canvas)
            {
                canvas.clear(0xffffffff);

                // draw path
                var paint = new Paint();
                paint.strokeWidth = 10;
                paint.strokeCap = #round;
                paint.style = #stroke;
                canvas.drawPath(this._path, paint);
            }
    */
    function close() { }

    /**
    Close the current contour. If the current point is not equal to the first point of the contour, a line segment is automatically added.
    @param x1 {Float} X1.
    @param y1 {Float} Y1.
    @param x2 {Float} X2.
    @param y2 {Float} Y1.
    @param radius {Float} Radius.
    @method arcTo
    */
    function arcTo(x1, y1, x2, y2, radius) { }

    /**
    Append the specified arc to the path as a new contour. If the start of the path is different from the path's current last point, then an automatic lineTo() is added to connect the current contour to the start of the arc. However, if the path is empty, then we call moveTo() with the first point of the arc. The sweep angle is treated mod 360.
    @param left {Float} The bounding oval defining the shape and size of the arc.
    @param top {Float} The bounding oval defining the shape and size of the arc.
    @param right {Float} The bounding oval defining the shape and size of the arc.
    @param bottom {Float} The bounding oval defining the shape and size of the arc.
    @param startAngle {Float} Starting angle (in degrees) where the arc begins.
    @param sweepAngle {Float} Sweep angle (in degrees) measured clockwise. This is treated mod 360.
    @param forceMoveTo {Float} If true, always begin a new contour with the arc.
    @method arcTo
    @example
        // create new instance of Path class
        this._path = new Path();
        // draw arc. Arc is bounded by rect (100, 100, 200, 200), starts at 90°and ends at 270°
        this._path.arcTo(100, 100, 200, 200, 90, 270, true);
        
        ....onDraw = function(sender, canvas)
        {
            canvas.clear(0xffffffff);
        
            // draw path
            var paint = new Paint();
            paint.style = #stroke;
            canvas.drawPath(this._path, paint);
        }
    */
    function arcTo(left, top, right, bottom, startAngle, sweepAngle, forceMoveTo) { }

    /**
    Add a quadratic bezier from the last point, approaching control point (x1,y1), and ending at (x2,y2). If no moveTo() call has been made for this contour, the first point is automatically set to (0,0).
    @param x1 {Float} The x-coordinate of the control point on a quadratic curve.
    @param y1 {Float} The y-coordinate of the control point on a quadratic curve.
    @param x2 {Float} The x-coordinate of the end point on a quadratic curve.
    @param y2 {Float} The y-coordinate of the end point on a quadratic curve.
    @param radius {Float} Radius.
    @method quadTo
    */
    function quadTo(x1, y1, x2, y2, radius) { }

    /**
    Add a line from the last point to the specified point (x,y). If no moveTo() call has been made for this contour, the first point is automatically set to (0,0).
    @param x {Float} The x-coordinate of the end of a line.
    @param y {Float} The y-coordinate of the end of a line.
    @method lineTo
    @example
            // create new instance of Path class
            this._path = new Path();
            // create house :)
            this._path.moveTo(100, 100);
            this._path.lineTo(100, 200);
            this._path.lineTo(200, 200);
            this._path.lineTo(200, 100);
            this._path.lineTo(100, 100);
            this._path.lineTo(150, 70);
            this._path.lineTo(200, 100);
            
            ....onDraw = function(sender, canvas)
            {
                canvas.clear(0xffffffff);
            
                // draw path
                var paint = new Paint();
                paint.style = #stroke;
                canvas.drawPath(this._path, paint);
            }
    */
    function lineTo(x, y) { }

   /**
    Set the beginning of the next contour to the point (x,y).
    @param x {Float} The x-coordinate of the start of a new contour
    @param y {Float} The y-coordinate of the start of a new contour
    @method moveTo
    @example
            // create new instance of Path class
            this._path = new Path();
            // create cross
            this._path.moveTo(100, 100);
            this._path.lineTo(200, 100);
            this._path.moveTo(150, 50);
            this._path.lineTo(150, 150);

            ....onDraw = function(sender, canvas)
            {
                canvas.clear(0xffffffff);

                // draw path
                var paint = new Paint();
                paint.style = #stroke;
                canvas.drawPath(this._path, paint);
            }
    */
    function moveTo(x, y) { }

  /**
    Returns the bounds of the path's points. If the path contains 0 or 1 points, the bounds is set to (0,0,0,0), and isEmpty() will return true. Note: this bounds may be larger than the actual shape, since curves do not extend as far as their control points.
    @param x {Float} The x-coordinate of the start of a new contour
    @param y {Float} The y-coordinate of the start of a new contour
    @method getBounds
    @return {Multivalue} The bounds of the path's points (left, top right and bottom).
    @example
            // create new instance of Path class
            this._path = new Path();
            this._path.arcTo(100, 100, 200, 200, 0, 180, true);
            var (l, t, r, b) = this._path.getBounds();
            // l: 100.000000, t: 150.000000, r: 200.000000, b: 200.000000
            console<<"l: "<<l<<", t: "<<t<<", r: "<<r<<", b: "<<b<<"\n";
    */
    function getBounds() { }

    /**
    Add a cubic bezier from the last point, approaching control points (x1,y1) and (x2,y2), and ending at (x3,y3). If no moveTo() call has been made for this contour, the first point is automatically set to (0,0).
    @param x1 {Float} The x-coordinate of the 1st control point on a cubic curve.
    @param y1 {Float} The y-coordinate of the 1st control point on a cubic curve.
    @param x2 {Float} The x-coordinate of the 2nd control point on a cubic curve.
    @param y2 {Float} The y-coordinate of the 2nd control point on a cubic curve.
    @param x3 {Float} The x-coordinate of the end point on a cubic curve.
    @param y3 {Float} The y-coordinate of the end point on a cubic curve.
    @method cubicTo
    */
    function cubicTo(x1, y1, x2, y2, x3, y3) { }

    /**
    Clear any lines and curves from the path, making it empty. This frees up internal storage associated with those segments. This does NOT change the fill-type setting nor Convex.
    @method reset
    */
    function reset() { }

    /**

    * #winding -          Specifies that "inside" is computed by a non-zero sum of signed edge crossings.
    * #event-odd -        Specifies that "inside" is computed by an odd number of edge crossings.
    * #inverse-winding -  Same as Winding, but draws outside of the path, rather than inside.
    * #inverse-even-odd - Same as EvenOdd, but draws outside of the path, rather than inside.
    @property fillType
    @type {Symbol}
    */
    property fillType() { }

    /**
    The bounds of the path's points. If the path contains 0 or 1 points, the bounds is set to (0,0,0,0), and isEmpty() will return true.
    __Note:__ this bounds may be larger than the actual shape, since curves do not extend as far as their control points.
    @property bounds
    @readOnly
    @type {Multivalue}
    */
    property bounds() { }












}