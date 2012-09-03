/**
A mouse joint is used to make a point on a body track a specified world point. This a soft constraint with a maximum force. This allows the constraint to stretch and without applying huge forces. An instance of this class is created by {{#crossLink "b2World/createMouseJoint"}}{{/crossLink}} or {{#crossLink "PhysicsScene/createMouseJoint"}}{{/crossLink}}
@class b2MouseJoint
@module box2d
@example
    // using native b2World
    var b2x = x / this._world.scale;
    var b2y = (System.height-y) / this._world.scale;
    var mouseJointDef = {
                    maxForce : 2500,
                    frequencyHz : 10000,
                    dampingRatio : 0.0,
                    targetX : b2x,
                    targetY : b2y
                };
    
    // crate mouse joint
    this._mouseJoint = this._world.createMouseJoint(this._ground, body, mouseJointDef, true);

    // OR (using framework PhysicsScene)
    // mouse joint definition
    var mouseJointDef = {
        maxForce : 10000,
        frequencyHz : 1000,
        dampingRatio : 0.0,
        targetX : table.x2box2d(x), // specified in box2d coords
        targetY : table.y2box2d(y)  // specified in box2d coords
    };
    this.joint = table.createMouseJoint(table.ground, this.paddle, mouseJointDef, true);


*/
class b2MouseJoint
{

    /**
    Use this to get the target point. The target point is the point where the joint tries to move the connected body.
    @method getTarget
    @return {Multivalue} Pair of float values: x and y coordinate of target point.
    @example
        var (b2x, b2y) = this._mouseJoint.getTarget();
        // convert box2d coordinates to screen coordinates
        var y = -1*b2y * this._world.scale + System.height;
        var x = b2x * this._world.scale;
    */
    function getTarget() { }


   /**
    Use this to update the target point. The target point is the point where the joint tries to move the connected body.
    @method setTarget
    @param x {Float} X coordinate of target point.
    @param y {Float} Y coordinate of target point.
    @example
        ....onPointerDragged = function(sender, x, y)
        {
            if (this._mouseJoint) {
                // convert screen coordinates to box2d coordinates
                var b2y = (System.height-y) / this._world.scale;
                var b2x = x / this._world.scale;
        
                this._mouseJoint.setTarget(b2x, b2y);
            }
        }
    */
    function setTarget(x, y) { }

    /**
    The maximum constraint force that can be exerted to move the candidate body. Usually you will express as some multiple of the weight (multiplier * mass * gravity).
    @property maxForce
    @type {Float}
    */
    property maxForce() { }

    /**
    The frequency in Hertz.
    @property frequency
    @type {Float}
    */
    property frequency() { }

    /**
    The damping ratio (dimensionless).
    @property dampingRatio
    @type {Float}
    */
    property dampingRatio() { }

}