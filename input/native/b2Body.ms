/**
This class manages different types of physical bodies with many different properties and behavior.
@class b2Body

@module box2d
*/
class b2Body
{

    /**
    Construct new recorder class.
    @method setTransform
    @param x {Float} The world x position of the body's local origin.
    @param y {Float} The world y position of the body's local origin.
    @param angle {Float} The world rotation in radians.
    @example
        body = this._world.createBody(shape, #dynamic, 0.9 , 0.3, 0.03);
        body.setTransform(100, 50, 0.25*Math.PI);
        
        // draw body
        body.onDraw = function(sender, g)
        {
            var (left, top) = sender.getPosition();
            var angleRad = sender.getAngle();
        
            g.save();
            g.translate(left, top);
            g.rotate(-(angleRad * 180.0 / Math.PI)); // rad2deg
        
            var matrix = new Matrix();
            matrix.preTranslate(0, 0).preRotate(0).preTranslate(-this super.img.width/2, -this super.img.height/2);
            g.drawBitmapMatrix(this super.img, matrix);
        
            g.restore();
        }
    */
    function setTransform(x, y, angle) { }

    /**
    Get the body's origin position.
    @method getPosition
    @return {Multivalue} Pair of float values: x, y - the world position of the body's origin
    @example
        ….body.onDraw = function(sender, canvas)
        {
            var (x, y) = this.getPosition();
            var angleRad = this.getAngle();
            canvas.save();
            canvas.translate(x, y);
            canvas.rotate(-(angleRad * 180.0 / Math.PI)); // rad2deg
        
            var paint = new Paint();
            paint.color = 0xff00ff00;
            canvas.drawRect(this super.bodyWidth / -2, this super.bodyHeight / -2, this super.bodyWidth / 2, this super.bodyHeight / 2, paint);
        
            canvas.restore();
        };
    */
    function getPosition() { }


    /**
    Place body to x, y.
    @method setPosition
    @param x {Float} The world position (x) of the body's local origin.
    @param y {Float} The world position (y) of the body's local origin.
    @example
        // create world
        this._world = new b2World(0.0, 9.8, false, true);
        // change gravity additionaly
        this.img = Bitmap.fromFile("app://img.png");
        var shape = b2PolygonShape.fromRect(this.img.width, this.img.height);
        // create body
        
        this._bodyA = this._world.createBody(shape, #dynamic, 0.9 , 0.3, 0.03);
        this._bodyA.setPosition(100, 50);

        // draw body
        this._bodyA.onDraw = function(sender, g)
        {
            var (left, top) = sender.getPosition();
            var angleRad = sender.getAngle();
        
            g.save();
            g.translate(left, top);
            g.rotate(-(angleRad * 180.0 / Math.PI)); // rad2deg
        
            var matrix = new Matrix();
            matrix.preTranslate(0, 0).preRotate(0).preTranslate(-this super.img.width/2, -this super.img.height/2);
            g.drawBitmapMatrix(this super.img, matrix);
        
            g.restore();
        }
    */
    function setPosition(x, y) { }

    /**
    Get the body's angle in radians.
    @method getAngle
    @return {b2Body} The current body rotation angle in radians.
    @example
        ….body.onDraw = function(sender, canvas)
        {
            var (x, y) = this.getPosition();
            var angleRad = this.getAngle();
            canvas.save();
            canvas.translate(x, y);
            canvas.rotate(-(angleRad * 180.0 / Math.PI)); // rad2deg

            var paint = new Paint();
            paint.color = 0xff00ff00;
            canvas.drawRect(this super.bodyWidth / -2, this super.bodyHeight / -2, this super.bodyWidth / 2, this super.bodyHeight / 2, paint);

            canvas.restore();
        }
    */
    function getAngle() { }

    /**
    Set the body's rotation angle in radians.
    @method setAngle
    @param angle {Float} Angle in radians.
    @example
        this.body.setAngle(45.0 * Math.PI / 180);
    */
    function setAngle(angle) { }


    /**
    Get the world position of the center of mass.
    @method getWorldCenter
    @return {Multivalue} Pair of values: x and y world coordinate f the center of mass
    @example
        // get center of the body in world coordinates
        var (x, y) = this.body.getWorldCenter();
        // apply impulse
        this.body.applyLinearImpulse(0, this.body.getMass() * -9.8, x, y);
    */
    function getWorldCenter() { }

    /**
    Get the local position of the center of mass.
    @method getLocalCenter
    @return {Array} Pair of float values: x,y local position of the center of mass.
    */
    function getLocalCenter() { }

    /**
    Set linear velocity of the center of mass.
    @method setLinearVelocity
    @param x {Float} The new linear velocity on x axis of the center of mass.
    @param y {Float} The new linear velocity on y axis of the center of mass.
    @example
        this.body.setLinearDamping(0.1);
        // apply linear velocity according to linear damping
        this.body.setLinearVelocity(0, this.body.getLinearDamping() * 100);
    */
    function setLinearVelocity(x, y) { }


    /**
    Get linear velocity of the center of mass.
    @method getLinearVelocity
    @return {Multivalue} Pair of float values: linear velocity of the center of mass on x and y axis
    */
    function getLinearVelocity() { }

    /**
    Apply a force at a world point. If the force is not applied at the center of mass, it will generate a torque and affect the angular velocity. This wakes up sleeping body.
    @method applyForce
    @param xForce {Float} The world force on x axis, usually in Newtons
    @param yForce {Float} The world force on y axis, usually in Newtons
    @param xPoint {Float} The world x coordinate of the point of force application
    @param yPoint {Float} The world y coordinate of the point of force application
    @example
        // get center of the body in world coordinates
        var (x, y) = this.body.getWorldCenter();
        // apply force
        this.body.applyForce(0, this.body.getMass() * -1000, x, y);
    */
    function applyForce(xForce, yForce, xPoint, yPoint) { }

    /**
    Apply a torque. This affects the angular velocity without affecting the linear velocity of the center of mass. This wakes up the body.
    @method applyTorque
    @param torque {Float} About the z-axis (out of the screen), usually in N-m.
    @example
        //apply immediate spin counter clockwise
        this.bodyA.applyTorque(this.bodyA.getMass()*100000);
        //apply immediate spin clockwise
        this.bodyB.applyTorque(this.bodyB.getMass()*-100000);
    */
    function applyTorque(torque) { }

    /**
    Apply an impulse at a point. This immediately modifies the velocity. It also modifies the angular velocity if the point of application is not at the center of mass. If the body is sleeping, this wakes up it.
    @method applyLinearImpulse
    @param xForce {Float} The world impulse on x axis, usually in N-seconds or kg-m/s.
    @param yForce {Float} The world impulse on y axis, usually in N-seconds or kg-m/s.
    @param xPoint {Float} The world x position of the point of application.
    @param yPoint {Float} The world y position of the point of application.
    @example
        // get center of the body in world coordinates
        var (x, y) = this.body.getWorldCenter();
        // apply impulse
        this.body.applyLinearImpulse(0, this.body.getMass() * -9.8, x, y);
    */
    function applyLinearImpulse(xForce,yForce,xPoint,yPoint) { }


    /**
    Apply an angular impulse. This impulse causes rotation of body.
    @method applyAngularImpulse
    @param impulse {Float} The angular impulse in units of kg*m*m/s. A positive number to rotate counter clockwise, negative number to rotate clockwise.
    @example
        //apply immediate spin counter clockwise
        this.bodyA.applyAngularImpulse(this.bodyA.getMass()*1000);
        //apply immediate spin clockwise
        this.bodyB.applyAngularImpulse(this.bodyB.getMass()*-1000);
    */
    function applyAngularImpulse(impulse) { }

    /**
    Get the world coordinates of a point given by the local coordinates.
    @method getWorldPoint
    @param x {Float} A point x coordinate on the body measured relative the the body's origin.
    @param y {Float} A point y coordinate on the body measured relative the the body's origin.
    @return {Multivalue} Pair of values: x and y coordinate of the same point expressed in world coordinates.
    @example
        this._bodyA = this._world.createBody(shape, #dynamic, 0.9 , 0.3, 0.03);

        this._bodyA.setPosition(100, 50);
        var (wx, wy) = this._bodyA.getWorldPoint(this.img.width / 2, this.img.height / 2);
        console<<"world coordinates of center of the body x: "<<wx<<" y: "<<wy<<"\n";
    */
    function getWorldPoint(x, y) { }

    /**
    Convert local vector's x and y component to world vector's components.
    @method getWorldVector
    @param x {Float} X component of vector fixed in the body.
    @param y {Float} Y component of vector fixed in the body.
    @return {Multivalue} The same vector x and y component expressed in world coordinates.
    */
    function getWorldVector(x, y) { }

    /**
    Gets a local point relative to the body's origin given a world point.
    @method getLocalPoint
    @param x {Float} X coordinate of point in world coordinates.
    @param y {Float} Y coordinate of point in world coordinates.
    @return {Multivalue} Pair of float values: the corresponding local point relative to the body's origin.
    */
    function getLocalPoint(x, y) { }

    /**
    Gets a local vector's x and y from given world vector's x and y coordinates.
    @method getLocalVector
    @param x {Float} A world vector's x component.
    @param y {Float} A world vector's y component.
    @return {Multivalue} The corresponding local vector's x and y components.
    */
    function getLocalVector(x, y) { }

    /**
    Get the total mass of the body.
    @method getMass
    @return {Float} The total mass of the body.
    @example
        // apply impulse
        this.body.applyLinearImpulse(0, this.body.getMass() * -9.8, x, y);
    */
    function getMass() { }

    /**
    Get the rotational inertia of the body about the local origin.
    @method getInertia
    @return {Float} The rotational inertia, usually in kg-m^2.
    */
    function getInertia() { }

    /**
    Get the world linear velocity of a world point attached to this body.
    @method getLinearVelocityFromWorldPoint
    @param x {Float} X coordinate of point in world coordinates.
    @param y {Float} Y coordinate of point in world coordinates.
    @return {Multivalue} Pair of float values: the world velocity on x and y axis of a point.
    */
    function getLinearVelocityFromWorldPoint(x, y) { }

    /**
    Get the world velocity of a local point.
    @method getLinearVelocityFromLocalPoint
    @param x {Float} X coordinate of point in local coordinates.
    @param y {Float} Y coordinate of point in local coordinates.
    @return {Multivalue} Pair of float values: the world velocity on x and y axis of a point.
    */
    function getLinearVelocityFromLocalPoint(x, y) { }

    /**
    Set linear damping of the body.
    @method setLinearDamping
    @param damping {Float} Linear damping.
    @example
        this.body.setLinearDamping(0.1);
        // apply linear velocity according to linear damping
        this.body.setLinearVelocity(0, this.body.getLinearDamping() * 100););
    */
    function setLinearDamping(damping) { }

    /**
    Get linear damping of the body.
    @method getLinearDamping
    @return {Float} Linear damping of the body.
    @example
        this.body.setLinearDamping(0.1);
        // apply linear velocity according to linear damping
        this.body.setLinearVelocity(0, this.body.getLinearDamping() * 100);
    */
    function getLinearDamping() { }


    /**
    Set angular damping of the body.
    @method setAngularDamping
    @param damping {Float} Angular damping.
    @example
        this.body.setAngularDamping(0.1);
        //apply immediate spin counter clockwise
        this.body.applyTorque(this.body.getMass()* 100000);
    */
    function setAngularDamping(damping) { }

    /**
    Get angular damping of the body.
    @method getAngularDamping
    @return {Float} Angular damping of the body.
    */
    function getAngularDamping() { }

    /**
    The type of this body. This may alter the mass and velocity.

    + #static - A static body behaves as if it has infinite mass. They does not move under simulation and can be moved only manually by b2Body.setPosition or b2Body.setTransform. A static body has zero velocity and do not collide with other static or kinematic bodies.
    + #kinematic - A kinematic body moves under simulation according to its velocity. Kinematic bodies do not respond to forces. They can be moved manually by the user, but normally a kinematic body is moved by setting its velocity. A kinematic body behaves as if it has infinite mass, but they do not collide with other static or kinematic bodies.
    + #dynamic - A dynamic body is fully simulated. They can be moved manually by PhysicsBody.setPosition, but normally they move according to forces. A dynamic body can collide with all body types and always has finite, non-zero mass. If you try to set the mass of a dynamic body to zero, it will automatically acquire a mass of one kilogram.
    @property bodyType
    @type {Symbol}
    */
    property bodyType() { }

    /**
    Is this body treated like a bullet for continuous collision detection?
    @property bullet
    @type {Boolean}
    */
    property bullet() { }

    /**
    You can disable sleeping on this body. If you disable sleeping onChar actualy sleeping body, the body will be woken.
    @property sleepingAllowed
    @type {Boolean}
    */
    property sleepingAllowed() { }

    /**
    Set to true to put body to sleep, false to wake it. A sleeping body has very low CPU cost.
    @property awake
    @type {Boolean}
    */
    property awake() { }

    /**
    Set the active state of the body.An inactive body is not simulated and cannot be collided with or woken up. If it is set to true, all fixtures are added to the broad-phase. otherwise, all fixtures are removed from the broad-phase and all contacts are destroyed. Fixtures and joints are otherwise unaffected. You may continue to create/destroy fixtures and joints on inactive bodies. Fixtures on an inactive body are implicitly inactive and will not participate in collisions, ray-casts, or queries. Joints connected to an inactive body are implicitly inactive. An inactive body is still owned by a b2World object and remains in the body list.
    @property active
    @type {Boolean}
    */
    property active() { }

    /**
    Enable / disable rotation of the body.
    @property fixedRotation
    @type {Boolean}
    */
    property fixedRotation() { }

    /**
    This function is called, when body needs to be redrawn.
    @event onEndContact
    @param sender {b2Body} Object, which called this function.
    @param canvas {Canvas} Canvas object, which provides ability to draw into the body.
    @example
        //create new Body. Position is set to 50, 20.
        var body = this.world.createBody(shape, #dynamic, 1, 1, 1, 50, 20);
        body.onDraw = function(sender, canvas)
        {
            //get position of circle
            var (left, top) = sender.getPosition();
        
            //draw green circle
            var paint = new Paint();
            paint.color = 0xff00ff00;   // chanels: alpha, red, green, blue
            canvas.drawCircle(left.toInteger(), top.toInteger(), this super.radius, paint);
        }
    */
    function onEndContact(sender, canvas) { }

}