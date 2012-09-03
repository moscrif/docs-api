/**
The world class manages all physics entities, dynamic simulation, and asynchronous queries.
    The world also contains efficient memory management facilities.
@class b2World
@module box2d
*/
class b2World
{

    /**
     Construct a world object.
    @method this
    @param [xGravity=0] {Float} The world gravity on x axis. Default: 0 .
    @param [yGravity=9.8] {Float} The world gravity on y axis. Default: 9.8 .
    @param [doSleep] {Boolean} Improve performance by not simulating inactive bodies.
    @param [enableCollisions] {Boolean} Enable collision between bodies.
    @example
        var app = new Moscrif.Window();
        app.terminate = false;
        app.onStart = function()
        {
            // create world
            this._world = new b2World(0.0, -9.8);
        
            // load image, which should be drawen into the body
            var bodyImg = Bitmap.fromFile("app://img.png");
            // create shape of body
            var shape = b2PolygonShape.fromRect(bodyImg.width, bodyImg.height);
        
            // create body
            var body = this._world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
            // draw body
            body.onDraw = function(sender, canvas)
            {
                var (l, t) = this.getPosition();
                canvas.drawBitmap(bodyImg, l.toInteger(), t.toInteger());
            }
        }
        
        app.onProcess = function(sender)
        {
            // recalculate world
            this._world.step(1.0/40.0, 4, 8);
            // redraw window
            this.invalidate();
            return this.terminate ? 0 : 1;
        }
        
        app.onDraw = function(sender, canvas)
        {
            // clear body
            canvas.clear(0xff000000);
            // draw b2 world
            this._world.doDraw(canvas);
        }
        
        app.init().run();
    */
    function this([xGravity=0 [,yGravity[,doSleep[,enableCollisions]]]]) { }


   /**
    Take a time step. This performs collision detection, integration, and constraint solution.
    @method step
    @param [timeStep] {Float} The amount of time to simulate. When this function is called from onProcess event in Moscrif, the value is usually 1.0/40.0 .
    @param [velocityIterations] {Integer} For the velocity constraint solver.
    @param [positionIterations] {Integer} For the position constraint solver.
    @example
        ....
        ....onStart = function()
        {
            // create world
            this._world = new b2World(0.0, -9.8);
        
        ...
           // create body
            var body = this._world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
        ....
          }
        
        ....onProcess = function(sender)
        {
            // recalculate world
            this._world.step(1.0/40.0, 4, 8);
        
            // redraw window
            this.invalidate();
            return this.terminate ? 0 : 1;
        }
    */
    function step(timeStep,velocityIterations,positionIterations ) { }


    /**
    Manually clear the force buffer on all bodies. By default, forces are cleared automatically after each call to Step.
    @method clearForces
    */
    function clearForces()
    {
    }

    /**
    Call this to redraw all objects in the world.
    @param canvas {Integer} Instance of canvas class into which world should be drawn.
    @method doDraw
    @example
        var app = new Moscrif.Window();
        app.terminate = false;
        
        ....onStart = function()
        {
            // create world
            this._world = new b2World();
            
        }
        
        ....onDraw = function(sender, canvas)
        {
            // clear body
            canvas.clear(0xff000000);
            // draw b2 world
            this._world.doDraw(canvas);
        }
        
        app.init().run();
    */
    function doDraw(canvas)
    {
    }

   /**
    Call this to draw shapes and other debug draw data.
    @param canvas {Integer} Instance of canvas class into which world should be drawn.
    @method doDebugDraw
    @example
        var app = new Moscrif.Window();
        app.terminate = false;
        
        ....onStart = function()
        {
            // create world
            this._world = new b2World();
            
        }
        
        ....onDraw = function(sender, canvas)
        {
            // clear body
            canvas.clear(0xff000000);
            // draw b2 world
            this._world.doDebugDraw(canvas);
        }
        
        app.init().run();
    */
    function doDebugDraw(canvas)
    {
    }

  /**
    Create new box2d body and place it to the x, y.
    @param b2CircleShape {b2CircleShape} Shape of new object.
    @param bodyTypeSym {Symbol} BodyType's parameter .

    + #static - A static body has does not move under simulation and behaves as if it has infinite mass. Internally, Box2D stores zero for the mass and the inverse mass. Static bodies can be moved manually by the user. A static body has zero velocity. Static bodies do not collide with other static or kinematic bodies.
    + #dynamic - A dynamic body is fully simulated. They can be moved manually by the user, but normally they move according to forces. A dynamic body can collide with all body types. A dynamic body always has finite, non-zero mass. If you try to set the mass of a dynamic body to zero, it will automatically acquire a mass of one kilogram.
    + #kinematic - A kinematic body moves under simulation according to its velocity. Kinematic bodies do not respond to forces. They can be moved manually by the user, but normally a kinematic body is moved by setting its velocity. A kinematic body behaves as if it has infinite mass, however, Box2D stores zero for the mass and the inverse mass. Kinematic bodies do not collide with other static or kinematic bodies.
    @param [density=1] {Float} Density 0 to 1.
    @param [friction=0.3] {Float} Friction 0 to 1.
    @param [bounce=0.2] {Float} Bounce 0 to 1.
    @param [x=0.0] {integer} Position of object on x axis.
    @param [y=0.0] {integer} Position of object on y axis.
    @return {b2Body} New instance of physics body interacting in the world.
    @method createBody
    */
    function createBody(shape, bodyTypeSym[, density, friction, bounce, x, y])
    {
    }

 /**
    Create distance joint between two objects. Distance joints says that the distance between two points on two bodies must be constant.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param anchorXA {Float} X position of anchor point on the first body. Anchor point is point on the body, which is conected with the second body.
    @param anchorYA {Float} Y position of anchor point on the first body. Anchor point is point on the body, which is conected with the second body.
    @param anchorXB {Float} X position of anchor point on the second body. Anchor point is point on the body, which is conected with the first body.
    @param anchorYB {Float} Y position of anchor point on the second body. Anchor point is point on the body, which is conected with the first body.
    @param scriptDef {Array} Other joints properties:

    + distanceLength - Default length between bodies (between anchor points).
    + frequencyHz - The mass-spring-damper frequency in Hertz. A value of 0 disables softness.
    + dampingRatio - The damping ratio from 0 to 1.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2DistanceJoint}  New distance joint.
    @method createDistanceJoint
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
    function createDistanceJoint(bodyA, bodyB, anchorXA, anchorYA, anchorXB, anchorYB, scriptDef[, collideConnected])
    {
    }

 /**
    A revolute joint forces two bodies to share a common anchor point, often called a hinge point. The revolute joint has a single degree of freedom: the relative rotation of the two bodies. This is called the joint angle.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param anchorX {Float} X position of anchor point. Anchor point is point around which bodies are rotated.
    @param anchorY {Float} Y position of anchor point. Anchor point is point around which bodies are rotated.
    @param scriptDef {Array} Other joints properties (A joint limit forces the joint angle to remain between a lower and upper bound. The limit range should include zero, otherwise the joint will lurch when the simulation begins. Angle is positive when rotates CCW.)

    + lowerAngle - The lower angle for the joint limit (radians).
    + upperAngle - The upper angle for the joint limit (radians).
    + enableLimit - True/false to enable joint limits.
    + maxMotorTorque - The maximum motor torque used to achieve the desired motor speed. Usually in N-m.
    + motorSpeed - The desired motor speed. Usually in radians per second.
    + enableMotor - True / false to enable the joint motor.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2RevoluteJoint}  New revolute joint.
    @method createRevoluteJoint
    @example
        //properties like: enableLimit, lowerAngle, enableMotor etc.
        var def =
        {
            enableLimit: true;
            ...
        };
        
        var joint = this.world.createRevoluteJoint(bodyA, bodyB, x, y, def);
    */
    function createRevoluteJoint( bodyA, bodyB, anchorX, anchorY, scriptDef [,collideConnected])
    {
    }

/**
    The friction joint is used for top-down friction. The joint provides 2D translational friction and angular friction.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param anchorX {Float} X position of anchor point.
    @param anchorY {Float} Y position of anchor point.
    @param scriptDef {Array} Other joints properties:

    + maxForce -  The maximum friction force in N.
    + maxTorque - The maximum friction torque in N-m.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2FrictionJoint}  New friction joint.
    @method createFrictionJoint
    */
    function createFrictionJoint(bodyA, bodyB, anchorX, anchorY, scriptDef[, collideConnected])
    {
    }

/**
    If you want to create a sophisticated mechanical contraption you might want to use gears. Gear joint connects two other types of joints and move them with set ratio.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param jojnt1 {Float} First joint.
    @param jojnt2 {Float} Second joint.
    @param ratio {Float} Ratio between both joints.
    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2GearJoint}  New friction joint.
    @method createGearJoint
    */
    function createGearJoint(bodyA, bodyB, jojnt1, jojnt2, ratio [, collideConnected]
    {
    }

/**
    A prismatic joint allows for relative translation of two bodies along a specified axis. A prismatic joint prevents relative rotation. Therefore, a prismatic joint has a single degree of freedom.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param anchorX {Float} X position of anchor point. Anchor point is point on the body, which is conected with the second body.
    @param anchorY {Float} Y position of anchor point. Anchor point is point on the body, which is conected with the second body.
    @param axisX {Float} X coordinate of axis.
    @param axisY {Float} Y coordinate of axis.
    @param referenceAngle {Float} ReferenceAngle angle
    @param scriptDef {Array} Other joints properties:

    + lowerTranslation - The lower translation limit, usually in meters.
    + upperTranslation - The upper translation limit, usually in meters.
    + enableLimit - Enable/disable the joint limit.
    + maxMotorForce - The maximum motor torque, usually in N-m.
    + motorSpeed - The desired motor speed in radians per second.
    + enableMotor - Enable/disable the joint motor.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2PrismaticJoint}  New prismatic joint.
    @method createPrismaticJoint
    */
    function createPrismaticJoint( bodyA, bodyB, anchorX, anchorY, axisX, axisY, referenceAngle, scriptDef [, collideConnected])
    {
    }

/**
    This joint provides two degrees of freedom: translation along an axis fixed in body1 and rotation in the plane. You can use a joint limit to restrict the range of motion and a joint motor to drive the motion or to model joint friction.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param anchorX {Float} X position of anchor point. Anchor point is point on the body, which is conected with the second body.
    @param anchorY {Float} Y position of anchor point. Anchor point is point on the body, which is conected with the second body.
    @param axisX {Float} X coordinate of axis.
    @param axisY {Float} Y coordinate of axis.
    @param referenceAngle {Float} ReferenceAngle angle
    @param scriptDef {Array} Other joints properties:

    + lowerTranslation - The lower translation limit, usually in meters.
    + upperTranslation - The upper translation limit, usually in meters.
    + enableLimit - Enable/disable the joint limit.
    + maxMotorForce - The maximum motor torque, usually in N-m.
    + motorSpeed - The desired motor speed in radians per second.
    + enableMotor - Enable/disable the joint motor.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2LineJoint}  New line joint.
    @method createLineJoint
    */
    function createLineJoint( bodyA, bodyB, anchorX, anchorY, axisX, axisY, referenceAngle, scriptDef [, collideConnected])
    {
    }

/**
    A mouse joint is used to make a point on a body track a specified world point. This a soft constraint with a maximum force. This allows the constraint to stretch and without applying huge forces.
    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param scriptDef {Array} Other joints properties:

    + maxForce - The maximum constraint force that can be exerted to move the candidate body. Usually you will express as some multiple of the weight (multiplier * mass * gravity).
    + frequencyHz - The response speed.
    + dampingRatio -  The damping ratio. 0 = no damping, 1 = critical damping.
    + targetX - X coordinate of initial world target point. This is assumed to coincide with the body anchor initially.
    + targetY - Y coordinate of initial world target point. This is assumed to coincide with the body anchor initially.

    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2MouseJoint}  New mouse joint.
    @method createMouseJoint
    @example
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
    */
    function createMouseJoint(bodyA, bodyB, scriptDef[, collideConnected])
    {
    }


/**
    The pulley joint is connected to two bodies and two fixed ground points. The pulley supports a ratio such that: length1 + ratio * length2 <= constant Yes, the force transmitted is scaled by the ratio.

    __Warning:__ the pulley joint can get a bit squirrelly by itself. They often work better when combined with prismatic joints. You should also cover the the anchor points with static shapes to prevent one side from going to zero length.

    @param bodyA {b2Body} First body.
    @param bodyB {b2Body} Second body.
    @param groundAnchorAX {Float} X coordinatesof of the first ground anchor.
    @param groundAnchorAY {Float} Y coordinatesof of the first ground anchor.
    @param groundAnchorBX {Float} X coordinatesof of the second ground anchor.
    @param groundAnchorBY {Float} Y coordinatesof of the second ground anchor.
    @param anchorAX {Float} X world coordinate of the anchor point on bodyA.
    @param anchorAY {Float} Y world coordinate of the anchor point on bodyA.
    @param anchorBX {Float} X world coordinate of the anchor point on bodyB.
    @param anchorBY {Float} Y world coordinate of the anchor point on bodyB.
    @param ratio {Float} The pulley ratio.
    @param [collideConnected] {Boolean} If this param is true colisions between connected bodies are allowed, otherwise their are denied. Bytes default this param is set top false.
    @return {b2PulleyJoint}  New pulley joint.
    @method createPulleyJoint
    */
    function createPulleyJoint(bodyA, bodyB, groundAnchorAX, groundAnchorAY, groundAnchorBX, groundAnchorBY, anchorAX, anchorAY, anchorBX, anchorBY, ratio[, collideConnected])
    {
    }


/**
    Destroy a joint.
    WARNING: The joints should not be removed in {{#crossLink "PhysicsScene/onBeginContact"}}{{/crossLink}} and {{#crossLink "PhysicsScene/onEndContact"}}{{/crossLink}}. Probably the better way is to remove it in {{#crossLink "Game/onProcess"}}{{/crossLink}} event.
    @param joint {b2Joint} Joint to destroy.
    @method destroyJoint
    @example
        this.joint = this.world.createDistanceJoint(body, bodyB, xa, ya, xb, yb, def);
        ...
        // destroy joint before closing the application
        this.world.destroyJoint(this.joint);
    */
    function destroyJoint(joint)
    {
    }

/**
    Destroy existing physics body.
    WARNING: The bodies should not be removed in {{#crossLink "PhysicsScene/onBeginContact"}}{{/crossLink}} and {{#crossLink "PhysicsScene/onEndContact"}}{{/crossLink}}. Probably the better way is to remove it in {{#crossLink "Game/onProcess"}}{{/crossLink}} event.
    @param body {b2Body} Body to destroy.
    @method destroyBody
    @example
        this.body = this.world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
        ....
        // destroy body
        this.world.destroyBody(this.body);
    */
    function destroyBody(body)
    {
    }

/**
    Enable/disable warm starting.  If the warm starting is enabled some box2d solvers uses resoul from previous time step, what improves performance.
    
    @param flag {Boolean} True / false to enable / disable.
    @method setWarmStarting
    */
    function setWarmStarting(flag)
    {
    }

/**
    Enable/disable continuous physics. For testing.
    Continuous collision detection (also called CCD), is a box2d feature which ensures correct simulation of fast moving objects.
    Some older physical engines do not supports CCD, what means that they calculate positions and colisions of bodies for every time step, what is called discrete simulation. However in discrete simulation rigid body can move long distance in time step. (If the body has sufficiently high speed, it can be  before time step few meters in front of the barrier and after time step it can be few meters behind the barrier.)  It caused that the fast moving body can move throw another body without detection of collision between these two bodies. This effect is called tunneling.
    By default box2d uses CCD to prevent tunneling effect. CCD looks for all collisions between the position before and after time step. For every collision it calculates time of impact (TOI). On the next time step the body moves only to the next TOI and then wait for the rest of time step and does not move anymore during the time step. To ensure the best performace the CCD calculates contacts only between dynamic and static bodies (not between the dynamic bodies each other). However, onto dynamic bodies can be set CCD separately. If there is fast moving body, which hit other dynamic bodies, you can set the fast moving body’s property bullet to true to allows CCD onto it.
    @param flag {Boolean} True / false to enable / disable.
    @method setContinuousPhysics
    */
    function setContinuousPhysics(flag)
    {
    }

/**
    Get the number of broad-phase proxies.
    @return {Integer} Number of broad-phase proxies.
    @method getProxyCount
    */
    function getProxyCount()
    {
    }

/**
    Get the number of bodies.
    @return {Integer} Number of bodies.
    @method getBodyCount
    @example
        // create world
        this._world = new b2World();
        // change gravity additionaly

        var shape = b2PolygonShape.fromRect(50, 20);
        // create body
        var bodies = new Array();
        var bodyCount = 4;
        for (var i = 0; i &lt; bodyCount; i++) {
                bodies[i] = this._world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
                // draw body
                bodies[i].onDraw = function(sender, canvas)
                {
                    ...
                }
            }
        //  body count: 4
        console<<"body count: "<<this._world.getBodyCount()<<"\n";
    */
    function getBodyCount()
    {
    }

/**
    Get the number of joints.
    @return {Integer} Number of joints
    @method getJointCount
    */
    function getJointCount()
    {
    }

/**
    Get the number of contacts (each may have 0 or more contact points).
    @return {Integer} Number of contacts.
    @method getContactCount
    @example
        if (this.world.getContactCount () > 0)
            console<<"two or more bodies colide together\n";
        else
            console<<"no colisions in world\n";
    */
    function getContactCount()
    {
    }

/**
    Set world’s gravity (separately for x and y axis).
    @param gx {Float} Gravity on x axis.
    @param gy {Float} Gravity on y axis.
    @method setGravity
    @example
        // create world
        this._world = new b2World();
        // change gravity additionally
        this._world.setGravity(0.0, 9.8);
    */
    function setGravity(gx,gy)
    {
    }

/**
    Get the global gravity.
    @return {Multivalue} Pair of float values. First is gravity one x axis and second one y axis.
    @method getGravity
    @example
        this.world = new b2World();
        // get world's gravity (default gravity)
        var (gx, gy) = this.world.getGravity();
        // gx is now 0.0 and gy 9.8
    */
    function getGravity()
    {
    }

    /**
    Flag to control automatic clearing of forces after each time step. By default it is set to true.
    @property autoClearForces
    @type {Boolean}
    */
    property autoClearForces() { }

    /**
    Value represent scale of box2d world against screen resolution.
        The width of the physics world is always 10 meters. I means that on different displays the world is scaled diferently.
        The scale property says how meny pixels on the screens represents one meter in physical simulation.
        It helps to convert screen coordinates to box2d coordinates, which also do not start from the left top corner as a screen pixels coordinates, but from the left bottom corner of the screen.
    @property scale
    @type {Float}
    @example
        // converts x-coord from screen to box2d
        function x2box2d(x)
        {
            return x / this._world.scale;
        }
    
        // converts y-coord from screen to box2d
        function y2box2d(y)
        {
            return (System.height - y) / this._world.scale;
        }
    */
    property scale() { }

    /**
    This function is called, when two bodies collide.
    @event onBeginContact
    @param sender {b2World} Object, which called this function.
    @param contact {b2Contact} Instance of b2Contact contains all informations about contact.
    @example
        this.world.onBeginContact = function(sender, contact)
        {
            // manage contact
            var bodyA = current.getBodyA();
            var bodyB = current.getBodyB();
            ...
        };
    */
    function onBeginContact(sender, contact) { }

    /**
    This function is called, when contact ends.
    @event onEndContact
    @param sender {b2World} Object, which called this function.
    @param contact {b2Contact} Instance of b2Contact contains all informations about contact.
    @example
        this.world.onEndContact = function(sender, contact)
        {
            // manage contact
            var bodyA = current.getBodyA();
            var bodyB = current.getBodyB();
            ...
        };
    */
    function onEndContact(sender, contact) { }

}