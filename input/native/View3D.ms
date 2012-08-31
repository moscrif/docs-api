/**
This class allows to create basic 3D transformations. This class calculates transformations and then apply them to the normal view object.
@class View3D
@module core
@example
        app.onDraw = function (sender, canvas)
        {
            canvas.clear(0xffffffff);
        
            // move center of coordinates to the middle of the screen
            canvas.translate(System.width / 2, System.height / 2);
        
            // create new view3d object
            var view3d = new View3D();
            view3d.rotateY(45);
            // apply rotating to the canvas
            view3d.applyToCanvas(canvas);
        
            // draw square to the midle of the screen
            canvas.drawRect(-100, -100, 100, 100, new Paint());
        }
*/
class View3D
{

    /**
     Create new instance of View3D class.
    @method this
    @return {View3D}
    */
    function this() { }


    /**
    This call saves the current matrix and clip information, and pushes a copy onto a private stack. Subsequent calls to translate, scale, rotate etc. all operate on this copy. When the balancing call to restore() is made, this copy is deleted and the previous matrix/clip state is restored.
    @method save
    */
    function save() { }

    /**
    This call balances a previous call to save(), and is used to remove all modifications to the matrix/clip state since the last save call. An error occurs if restore() is called more times than save().
    @method restore
    */
    function restore() { }

    /**
    Moves canvas on x, y orientation z axis.
    @param x {Float} Shift on the x axis.
    @param y {Float} Shift on the y axis.
    @param z {Float} Shift on the z axis.
    @method translate
    */
    function translate(x, y, z) { }

    /**
    Rotate canvas around x axis.
    @param degrees {Float} Angle to rotate (in degrees).
    @method rotateX
    */
    function rotateX(degrees) { }

    /**
    Rotate canvas around y axis.
    @param degrees {Float} Angle to rotate (in degrees)
    @method rotateY
    */
    function rotateY(degrees) { }

/**
    Rotate canvas around z axis.
    @param degrees {Float} Angle to rotate (in degrees)
    @method rotateZ
    */
    function rotateZ(degrees) { }

/**
    Gets current transformation matrix.
    @method getMatrix
    @return {matrix} Current transformation matrix
    */
    function getMatrix() { }

/**
    Apply transformations to canvas object.
    @param canvas {Canavas} Object to the application of transformations
    @method applyToCanvas
    */
    function applyToCanvas(canvas) { }

    /**

    @param dx {Float}
    @param dy {Float}
    @param dz {Float}
    @method dotWithNormal
    */
    function dotWithNormal(dx, dy, dz) { }

}