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
    @return {Multivalue} Pair of float values: x and y coordinate of target point.
    @example
        // load image
        var img = Bitmap.fromFile("app://img.png");
        // create shape
        var shape = b2PolygonShape.fromRect(img.width, img.height);
        // create body
        var body = this._world.createBody(shape, #dynamic, 1 , 0.3, 0.03);
    */
    function fromRect(width, height[, center[, angle]]) { }

}