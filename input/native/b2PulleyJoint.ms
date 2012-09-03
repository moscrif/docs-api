/**
The pulley joint is connected to two bodies and two fixed ground points.
    The pulley supports a ratio such that: length1 + ratio * length2 <= constant Yes, the force transmitted is scaled by the ratio.
    The pulley also enforces a maximum length limit on both sides. This is useful to prevent one side of the pulley hitting the top.
    An instance of this class is created by native: {{#crossLink "b2World/createPulleyJoint"}}{{/crossLink}} or framework {{#crossLink "PhysicsScene/createPulleyJoint"}}{{/crossLink}}
@class b2PulleyJoint
@module box2d
@example
    // create the pulley joint
    this._pulleyJoint = this.createPulleyJoint(this._rect1, this._rect2, System.width / 4, System.height / 8, 3 * System.width / 4, System.height / 8, System.width / 4, System.height / 2, 3 * System.width / 4, System.height / 2, 1.0 , true)
*/
class b2PulleyJoint
{

    /**
    Get the first ground anchor.
    @method getGroundAnchorA
    @return {Multivalue} Pair of float values: x and y coordinate of anchor point.
    */
    function getGroundAnchorA() { }

    /**
    Get the second ground anchor.
    @method getGroundAnchorB
    @return {Multivalue} Pair of float values: x and y coordinate of anchor point.
    */
    function getGroundAnchorB() { }

    /**
    Get the current length of the segment attached to bodyA.
    @method getLength1
    @return {Float} Length of the segment attached to bodyA.
    */
    function getLength1() { }

    /**
    Get the current length of the segment attached to bodyB.
    @method getLength2
    @return {Float} Length of the segment attached to bodyB.
    */
    function getLength2() { }

    /**
    Get the pulley ratio.
    @method motorSpeed
    @return {Float} Pulley ratio.
    */
    function getRatio() { }
}