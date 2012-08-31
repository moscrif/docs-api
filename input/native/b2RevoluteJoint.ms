/**
A revolute joint constrains two bodies to share a common point while they are free to rotate about the point. The relative rotation about the shared point is the joint angle. You can limit the relative rotation with a joint limit that specifies a lower and upper angle. You can use a motor to drive the relative rotation about the shared point. A maximum motor torque is provided so that infinite forces are not generated.
@class b2RevoluteJoint
@module box2d
*/
class b2RevoluteJoint
{

    /**
    Another way to set lower and upper limit.
    @method setLimits
    @param lower {Float} The lower joint limit, usually in meters.
    @param upper {Float} The upper joint limit, usually in meters.
    */
    function setLimits(lower,upper) { }

    /**
    Another way to get lower and upper limit.
    @method getLimits
    @return {Multivalue} Pair of float values: lower and upper limit.
    */
    function getLimits() { }

    /**
    The lower angle for the joint limit (radians).
    @property lowerLimit
    @type {Float}
    */
    property lowerLimit() { }

    /**
    The upper angle for the joint limit (radians).
    @property upperLimit
    @type {Float}
    */
    property upperLimit() { }

    /**
    Enable / disable joint limits.
    @property enableLimit
    @type {Boolean}
    */
    property enableLimit() { }

    /**
    Enable / disable the joint motor.
    @property enableMotor
    @type {Boolean}
    */
    property enableMotor() { }

    /**
    The desired motor speed (usually in radians per second)
    @property motorSpeed
    @type {Float}
    */
    property motorSpeed() { }

    /**
    The maximum motor torque, usually in N-m.
    @property motorTorque
    @type {Float}
    */
    property motorTorque() { }


}