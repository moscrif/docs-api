/**
A distance joint constrains two points on two bodies to remain at a fixed distance from each other.
@class b2DistanceJoint
@module box2d
@example
    this.bodyA = this.world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
    this.bodyB = this.world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);

    var def =
    {
        dampingRatio: 0.5; //from 0 to 1
    };
    var (xa, ya) = this.bodyA.getWorldCenter();
    var (xb, yb) = this.bodyB.getWorldCenter();

    this.joint = this.world.createDistanceJoint(this.bodyA, this.bodyB, xa, ya, xb, yb, def);
*/
class b2DistanceJoint
{

    /**
    The natural length. Manipulating the length can lead to non-physical behavior when the frequency is zero.
    @property length
    @type {Float}
    */
    property length() { }

    /**
    Frequency in Hz.
    @property frequencyHz
    @type {Float}
    */
    property frequencyHz() { }

    /**
    Damping ratio.
    @property dampingRatio
    @type {Float}
    */
    property dampingRatio() { }


}