/**
A prismatic joint provides one degree of freedom: translation along an axis fixed in body1. Relative rotation is prevented. You can use a joint limit to restrict the range of motion and a joint motor to drive the motion or to model joint friction.
@class b2PrismaticJoint
@module box2d
@example
    // create the prismatic joint
    // set joint
    var jointDef = {
        lowerTranslation    : -3.0, // meters
        upperTranslation    : 5.0,  // meters
        enableLimit         : true,
        enableMotor         : true,
        motorSpeed          : 1.0,
        maxMotorForce       : 100.0,
    }
    this._prismaticJoint = this.createPrismaticJoint(this._ground, this._rect1, System.width / 2, System.height / 2, 0.0, 1.0, 0.0, jointDef, true)

*/
class b2PrismaticJoint
{

    /**
    The lower joint limit, usually in meters.
    @property lowerLimit
    @type {Float}
    */
    property lowerLimit() { }

    /**
    The upper joint limit, usually in meters.
    @property upperLimit
    @type {Float}
    */
    property upperLimit() { }

    /**
    Enable / disable the joint limit.
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
    The motor speed, usually in meters per second.
    @property motorSpeed
    @type {Float}
    */
    property motorSpeed() { }

    /**
    The current motor force, usually in N.
    @property motorForce
    @type {Float}
    */
    property motorForce() { }

   /**
    Another way to set lower and upper limit.
    @method setLimits
    @param lower {Float} The lower joint limit, usually in meters.
    @param upper {Float} The upper joint limit, usually in meters.
    */
    function setLimits(lower, upper) { }

    /**
    Another way to get lower and upper limit.
    @method getLimits
    @return {Multivalue} Pair of float values: lower and upper limit.
    */
    function getLimits() { }


}