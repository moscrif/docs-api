/**
A gear joint is used to connect two joints together. Either joint can be a revolute or prismatic joint.
You specify a gear ratio to bind the motions together: coordinate1 + ratio * coordinate2 = constant The ratio can be negative or positive.
If one joint is a revolute joint and the other joint is a prismatic joint, then the ratio will have units of length or units of 1/length.

__Warning:__ The revolute and prismatic joints must be attached to fixed bodies (which must be body1 on those joints).

An instance of this class is created by native: {{#crossLink "b2World/createGearJoint"}}{{/crossLink}} or framework {{#crossLink "PhysicsScene/createGearJoint"}}{{/crossLink}}
@class b2GearJoint
@module box2d
@example
    // create the prismatic joint
    // set limits
    var jointDef = {
        ...
    }
    var prismaticJoint = this.createPrismaticJoint(this._leftWall, this._rect2, System.width / 2, System.height / 5, 0.0, 1.0, 0.0, jointDef, true)
    
    // create the revolute joint
    jointDef = {
       ...
    }
    // create joint
    var revoluteJoint = this.createRevoluteJoint(this._ground, this._rect1, System.width / 2, System.height / 5, jointDef, true);
    
    // connect bodies with gear joint
    this._gearJoint = this.createGearJoint(this._rect1, this._rect2, prismaticJoint, revoluteJoint, 0.8, true);
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