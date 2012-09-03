/**
Friction joint. This is used for top-down friction. It provides 2D translational friction and angular friction.
An instance of this class is created by {{#crossLink "PhysicsScene/createFrictionJoint"}}{{/crossLink}}
@class b2FrictionJoint
@module box2d

*/
class b2FrictionJoint
{

    /**
    The maximum friction force in N.
    @property maxForce
    @type {Float}
    */
    property maxForce() { }

    /**
    The maximum friction torque in N*m.
    @property maxTorque
    @type {Float}
    */
    property maxTorque() { }
}