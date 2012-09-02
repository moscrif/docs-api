/**
A convex polygon. It is assumed that the interior of the polygon is to the left of each edge.
@class b2PolygonShape
@module box2d
*/
class b2PolygonShape
{

    /**
    Create new rectangle shape acording to the parameters.
    @method fromRect
    @param width {Float} The half-width.
    @param height {Float} The half-height.
    @param [center] {Object} X andthe y coordinates of the center of the box in local coordinates.
    @param [angle] {Float} Rotation angle.
    @return {b2PolygonShape} Created rectangle shape.
    @example
        // load image
        var img = Bitmap.fromFile("app://img.png");
        // create shape
        var shape = b2PolygonShape.fromRect(img.width, img.height);
        // create body
        var body = this._world.createBody(shape, #dynamic, 1 , 0.3, 0.03);
    */
    function fromRect(width, height[, center[, angle]]) { }

    /**
    Create edge shape. Edge shapes are line segments.
    These are provided to assist in making a free-form static environment.
    Edge shapes can collide with circles and polygons bodies but not with themselves. Edge bodies have no volume.
    @method fromEdge
    @param v1x {Float} X coordinate of the first point of the body from the centre of the shape. The positive values are in right and top directions.
    @param v1y {Float} Y coordinate of the first point of the body from the centre of the shape. The positive values are in right and top directions.
    @param v2x {Float} X coordinate of the second point of the body from the centre of the shape. The positive values are in right and top directions.
    @param v2y {Float} Y coordinate of the second point of the body from the centre of the shape. The positive values are in right and top directions.
    @return {b2PolygonShape} Created edge shape.
    @example
        var shape = b2PolygonShape.fromEdge(v1x, v1y, v2x, v2y);
        var body = ...world.createBody(shape, #dynamic, 1 , 0.3, 0.03);
    */
    function fromEdge(width, height[, center[, angle]]) { }

    /**
    Create new polygon shape acording to the parameters.
    @method fromPoly
    @param array {Array} Array of verticles. The array should contains objects with two values: x and y -> distance from center in pixels (positive values are located up and right). Points in array should by in CCW order. Minimum number of vertex are 3 maximum (ussally) 8.
    @return {b2PolygonShape} Created polygon shape.
    @example
        // This defines a triangle in CCW order.
        var verticles = {                                                                                                                                                                                                                                    var shape = new Array(
            // top - left
            {x : 0.0 y : 0.0},
            // bottom - left
            {x : 1.0, y : 0.0},
            // bottom - right
            {x : 0.0, y : 1.0}
        )
        // create a triangle body
        var shape = b2PolygonShape.fromPoly(verticles);
        var body = ...world.createBody(shape, #dynamic, 1 , 0.3, 0.03);
    */
    function fromPoly(array) { }


}