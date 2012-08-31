/**
The class manages contact between two shapes. A contact exists for each overlapping AABB in the broad-phase (except if filtered). Therefore a contact object may exist that has no contact points.
@class b2Contact
@module box2d
*/
class b2Contact
{

    /**
    Get the next contact in the world's contact list.
    @method getNext
    @param radius {Float} Body radius.
    @return {b2Contact} Next contact in the list or null if no other is available.
    @example
        // handle all current contacts in the world
        this._world.onBeginContact = function(sender, contact)
        {
            // set first contact to current
            var current = contact;
            // if there is no contact in current variable break the loop
            while (current != null)
            {
                // other operations with b2Contact object
                ...

                // get next contact
                current = current.getNext();
            }
        };
    */
    function getNext(radius) { }

    /**
    Get the first body in the contact.
    @method getBodyA
    @return {b2Contact} The first body in the contact
    @example
        // handle all current contacts in the world
        this._world.onBeginContact = function(sender, contact)
        {
            // get the first body in the contact
            var bodyA = contact.getBodyA();
            // get the second body in the contact
            var bodyB = contact.getBodyB();
        };
    */
    function getBodyA() { }

    /**
    Get the second body in the contact.
    @method getBodyB
    @return {b2Contact} The second body in the contact.
    @example
        // handle all current contacts in the world
        this._world.onBeginContact = function(sender, contact)
        {
            // get the first body in the contact
            var bodyA = contact.getBodyA();
            // get the second body in the contact
            var bodyB = contact.getBodyB();
        };
    */
    function getBodyB() { }

    /**
    Enable/disable this contact. This can be used inside the pre-solve contact listener. The contact is only disabled for the current time step (or sub-step in continuous collisions).
    @property enabled
    @type {Boolean}
    @readOnly
    @example
        var myCars=new Array("Saab", "Volvo", "BMW");
        console<<myCars.length<<"\n";  // 3
    */
    property enabled() { }

    /**
    Is this contact touching?
    @property isTouching
    @type {Boolean}
    @readOnly
    */
    property isTouching() { }

    /**
    Density of the first body.
    @property densityA
    @type {Float}
    */
    property densityA() { }

    /**
    Friction of the first body.
    @property frictionA
    @type {Float}
    */
    property frictionA() { }

    /**
    Restitution of the first body.
    @property restitutionA
    @type {Float}
    */
    property restitutionA() { }

    /**
    Density of the second body.
    @property densityB
    @type {Float}
    */
    property densityB() { }

    /**
    Friction of the second body.
    @property frictionB
    @type {Float}
    */
    property frictionB() { }

    /**
    Restitution of the second body.
    @property restitutionB
    @type {Float}
    */
    property restitutionB() { }


}