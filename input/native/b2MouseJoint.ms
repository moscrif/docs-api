/**

A mouse joint is used to make a point on a body track a specified world point. This a soft constraint with a maximum force. This allows the constraint to stretch and without applying huge forces. NOTE: this joint is not documented in the manual because it was developed to be used in the testbed. If you want to learn how to use the mouse joint, look at the testbed.
@class b2MouseJoint
@module box2D
*/
class b2MouseJoint
{

    /**
    Use this to get the target point.
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
    Use this to update the target point.
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