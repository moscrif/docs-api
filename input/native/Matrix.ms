/**
The Matrix class holds a 3x3 matrix.
    This matrix is used mostly to set transform information for {{#crossLink "Bitmap"}}{{/crossLink}} or {{#crossLink "Canvas"}}{{/crossLink}} transformation.
@class Matrix
@module core
@example
    var bitmap = Bitmap.fromFile("dat://moscrif.jpg");

    var matrix = new Matrix();
    //move bitmap to the midle of screen
    matrix.setTranslate(System.width / 2 - bitmap.width / 2, System.height / 2 - bitmap.height / 2);
    
    //rotate bitmap to 45°
    matrix.preRotate(45);
    
    //draw rotated bitmap
    canvas.drawBitmapMatrix(bitmap, matrix);
*/
class Matrix
{

    /**
    Object constructor creates new 3x3 matrix
    @method this
    */
    function this() { }


    /**
    Reset matrix to the matrix identity.
    @method reset
    */
    function reset() { }

    /**
    Set the matrix to translate by (dx, dy).
    @param dx {Float} move on the x axis.
    @param dy {Float} move on the y axis.
    @method setTranslate
    @chainable
    @example
        // create transform matrix
        var m = new Matrix();
        // apply movement
        m.setTranslate(320, 480);

        // apply transformation to the path
        this._path.transform(m);
    */
    function setTranslate(dx, dy) { }

    /**
    Set the matrix to scale by sx and sy, with a pivot point at (px, py).
        The pivot point is the coordinate that should stay unchanged by the specified transformation.
    @param sx {Float} x scale.
    @param sy {Float} y scale.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @method setScale
    @chainable
    @example
        this._path = Path.fromSVG("M16....128.63z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height - (b - t)) / 2);

        var m = new Matrix();
        // enlarge pictures, keep coordinates of the center
        m.setScale(4, 4, System.width / 2, System.height / 2);

        // apply transformation to the path
        this._path.transform(m);
    */
    function setScale(sx, sy [,px, py]) { }

    /**
    Set the matrix to rotate around a pivot point at (px, py).
        The pivot point is the coordinate that should remain unchanged by the specified transformation.

    @param degrees {Float} Number of degrees to rotate (in clockwise).
    @param px {Float} Coordinates of pivot point on x axis.
    @param py {Float} Coordinates of pivot point on y axis.
    @method setRotate
    @chainable
    @example
        this._path = Path.fromSVG("M16....128.63z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height - (b - t)) / 2);

        var m = new Matrix();
        // enlarge pictures, keep coordinates of the center
        m.setScale(4, 4, System.width / 2, System.height / 2);

        // apply transformation to the path
        this._path.transform(m);
    */
    function setRotate(degrees, px, py) { }

    /**
    Set the matrix to skew by sx and sy, with a pivot point at (px, py).
        The pivot point is the coordinate that should remain unchanged by the specified transformation.
    @param kx {Float} x skew.
    @param ky {Float} y skew.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @method setSkew
    @chainable
    */
    function setSkew(kx, ky, px, py) { }


    /**
    Preconcats the matrix with the specified translation. M' = M * T(dx, dy).
    @param dx {Float} Move on the x axis.
    @param dy {Float} Move on the x axis.
    @return {Boolean}
    @method preTranslate
    @chainable
    @example
        this._path = Path.fromSVG("M1...3z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);

        var m = new Matrix();
        // scale path
        m.setScale(2, 2, System.width / 2, System.height / 2);
        // apply movement
        m.preTranslate(-1*System.width / 8, 0);
        // apply transformation to the object
        this._path.transform(m);
    */
    function preTranslate(dx, dy) { }

    /**
    Preconcats the matrix with the specified scale. M' = M * S(sx, sy, px, py).
    @param sx {Float} x scale.
    @param sy {Float} y scale.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method preScale
    @chainable
    @example
        this._path = Path.fromSVG("M16...3z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);
        
        var m = new Matrix();
        // scale path
        m.setTranslate(0, -1*System.height / 4);
        m.preScale(2, 2, System.width / 2, System.height / 4);
        // apply transformation to the object
        this._path.transform(m);
    */
    function preScale(sx, sy, px, py) { }

    /**
    Preconcats the matrix with the specified rotation. M' = M * R(degrees, px, py).
    @param degrees {Float} Number of degrees to rotate (in clockwise).
    @param px {Float} Coordinates of pivot point on x axis.
    @param py {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method preRotate
    @chainable
    @example
        this._path = Path.fromSVG("M16.......63z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);

        var m = new Matrix();
        // scale path
        m.setScale(2, 2, System.width / 2, System.height / 2);
        // apply rotation
        m.preRotate(-90, System.width / 3, System.height / 2);
        // apply transformation to the object
        this._path.transform(m);
    */
    function preRotate(degrees, px, py) { }

    /**
    Preconcats the matrix with the specified skew. M' = M * K(kx, ky, px, py).
    @param kx {Float} x skew.
    @param ky {Float} y skew.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method preSkew
    @chainable
    */
    function preSkew(kx, ky, px, py) { }

    /**
    Postconcats the matrix with the specified translation. M' = T(dx, dy) * M.
    @param dx {Float} Move on the x axis.
    @param dy {Float} Move on the x axis.
    @return {Boolean}
    @method postTranslate
    @example
        this._path = Path.fromSVG("M1...3z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);
        
        var m = new Matrix();
        // scale path
        m.setScale(2, 2, System.width / 2, System.height / 2);
        // apply movement
        m.postTranslate(-1*System.width / 8, 0);
        // apply transformation to the object
        this._path.transform(m);
    */
    function postTranslate(dx, dy) { }

    /**
    Postconcats the matrix with the specified scale. M' = S(sx, sy, px, py) * M.
    @param sx {Float} x scale.
    @param sy {Float} y scale.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method postScale
    @chainable
    @example
        this._path = Path.fromSVG("M16...3z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);
        
        var m = new Matrix();
        // scale path
        m.setTranslate(0, -1*System.height / 4);
        m.postScale(2, 2, System.width / 2, System.height / 4);
        // apply transformation to the object
        this._path.transform(m);
    */
    function postScale(sx, sy, px, py) { }

    /**
    Postconcats the matrix with the specified rotation. M' = R(degrees, px, py) * M.
    @param degrees {Float} Number of degrees to rotate (in clockwise).
    @param px {Float} Coordinates of pivot point on x axis.
    @param py {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method postRotate
    @chainable
    @example
        this._path = Path.fromSVG("M1....8.63z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);
        
        var m = new Matrix();
        // scale path
        m.setScale(2, 2, System.width / 2, System.height / 2);
        // apply rotation
        m.postRotate(-90, System.width / 3, System.height / 2); // rotate CCW
        // apply transformation to the object
        this._path.transform(m);
    */
    function postRotate(degrees, px, py) { }


    /**
    Postconcats the matrix with the specified skew. M' = K(kx, ky, px, py) * M.
    @param kx {Float} x skew.
    @param ky {Float} y skew.
    @param [px] {Float} Coordinates of pivot point on x axis.
    @param [py] {Float} Coordinates of pivot point on y axis.
    @return {Boolean}
    @method postSkew
    @chainable
    */
    function postSkew(kx, ky, px, py) { }

    /**
    Set the matrix to the scale and translate values that map the source rectangle to the destination rectangle, returning true if the the result can be represented.
    @param srcleft {Integer} The source rectangle to map from.
    @param srctop {Integer} The source rectangle to map from.
    @param srcright {Integer} The source rectangle to map from.
    @param srcbottom {Integer} The source rectangle to map from.
    @param dstleft {Integer} The destination rectangle to map to.
    @param dsttop {Integer} The destination rectangle to map to.
    @param dstright {Integer} The destination rectangle to map to.
    @param dstbottom {Integer} The destination rectangle to map to.
    @param scaleToFit {Symbol} The source rectangle to map from.

    * #fill - Scale in X and Y independently, so that src matches dst exactly. This may change the aspect ratio of the src.
    * #start - Compute a scale that will maintain the original src aspect ratio, but will also ensure that src fits entirely inside dst. At least one axis (X or Y) will fit exactly. kStart aligns the result to the left and top edges of dst.
    * #center - Compute a scale that will maintain the original src aspect ratio, but will also ensure that src fits entirely inside dst. At least one axis (X or Y) will fit exactly. The result is centered inside dst.
    * #end - Compute a scale that will maintain the original src aspect ratio, but will also ensure that src fits entirely inside dst. At least one axis (X or Y) will fit exactly. kEnd aligns the result to the right and bottom edges of dst.
    @return {Boolean}
    @method setRectToRect
    @chainable
    @example
        this._path = Path.fromSVG("M16...63z");
        // create transform matrix
        var (l, t, r, b) = this._path.getBounds();
        this._path.offset(-1*l, -1*t);
        this._path.offset((System.width - (r - l)) / 2, (System.height  - (b - t)) / 2);
        
        var m = new Matrix();
        // map whole screen to the left bottom quarter of the screen
        m.setRectToRect(0, 0, System.width, System.height,System.width / 2, System.height / 2, System.width, System.height, #fill);
        // apply to the path object
        this._path.transform(m);
    */
    function setRectToRect(srcleft, srctop, srcright, srcbottom, dstleft, dsttop, dstright, dstbottom, scaleToFit) { }

    /**
    Translate on Y axis.
    @property translateX
    @type {Float}
    */
    property translateX() { }

    /**
    Translate on Y axis.
    @property translateY
    @type {Float}
    */
    property translateY() { }

    /**
    Scale on X axis
    @property scaleX
    @type {Float}
    */
    property scaleX() { }

    /**
    Scale on Y axis
    @property scaleY
    @type {Float}
    */
    property scaleY() { }

    /**
    Skew on X axis
    @property skewX
    @type {Float}
    */
    property skewX() { }

    /**
    Skew on Y axis.
    @property skewY
    @type {Float}
    */
    property skewY() { }
}