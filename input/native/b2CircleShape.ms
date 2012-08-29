/**

This class creates shape for circular physical bodies.
@class b2CircleShape
@module box2D
*/
class b2CircleShape
{

    /**
    Creates new instance of b2CircleShape with required radius.
    @method this
    @param radius {Float} Body radius.
    @return {b2CircleShape} New instance of b2CircleShape class.
    @example
        //create new circular shape with radius 10
        this.radius = 10;
        var shape = new b2CircleShape(this.radius);
        
        //create new Body. Position is set to 50, 20.
        var body = this.world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
    */
    function this(radius) { }


}