/**

A gear joint is used to connect two joints together. Either joint can be a revolute or prismatic joint.
You specify a gear ratio to bind the motions together: coordinate1 + ratio * coordinate2 = constant The ratio can be negative or positive.
If one joint is a revolute joint and the other joint is a prismatic joint, then the ratio will have units of length or units of 1/length.

__Warning:__ The revolute and prismatic joints must be attached to fixed bodies (which must be body1 on those joints).
@class b2GearJoint
@module box2D
*/
class b2GearJoint
{

    /**
    Set/Get the gear ratio.
    @property ratio
    @type {Float}
    */
    property ratio() { }

}