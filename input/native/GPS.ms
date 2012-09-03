/**
GPS class manages all operations with gps hardware.
@class GPS
@module sensor
*/
class GPS
{

    /**
    Constructs new GPS object.
    @method this
    @example
        this._gps = new GPS();
        this._gps.start(200);
        this._gps.onPositionReceived = function(sender, timestamp, params) {
            app.actualLat = params[0];
            app.actualLon = params[1];
        }
    */
    function this() { }

    /**
    Function returns true if GPS is available on the device. Otherwise it returns false.
    @method isAvailable
    @return Boolean
    @example
        if (!GPS.isAvailable())
            System.messageBox("No GPS detected in your device!");
    */
    function isAvailable() { }

    /**
    This function starts sending position data. When new data are available, GPS object calls callback functions.
    @method start
    @example
        this._gps = new GPS();
        this._gps.start(200);
        this._gps.onPositionReceived = function(sender, timestamp, params) {
            app.actualLat = params[0];
            app.actualLon = params[1];
        }
    */
    function start() { }

    /**
    Pause sending callback data.
    @method pause
    */
    function pause() { }

    /**
    Resume sending callback data.
    @method resume
    */
    function resume() { }

    /**
    Destroy object and release all underlying resources.
    @method dispose
    */
    function dispose() { }

    /**
    GPS object call this callback function, when new position data is available.
    @param {GPS} sender Sender object.
    @param {Integer} timestamp Time information.
    @param {Array} params Array with 3 elements

    * params[0] - latitude
    * params[1] - longitude
    * params[2] - altitude
    @event onPositionReceived
    @example
        this._gps = new GPS();
        this._gps.start(200);
        this._gps.onPositionReceived = function(sender, timestamp, params) {
            app.actualLat = params[0];
            app.actualLon = params[1];
        }
    */
    function onPositionReceived(sender, timestamp, params) { }

    /**
    GPS object call this callback function, when new state data is available.
    @param {GPS} sender Sender object.
    @param {Integer} timestamp Time information.
    @param {Array} params State information.
    @event onStateChanged
    @example
        this._gps = new GPS();
        this._gps.start(200);
        this._gps.onStateChanged = function(sender, timestamp, state) {
            console<<"new state: "<<state<<"\n";
        }
    */
    function onStateChanged(sender, timestamp, state) { }
}