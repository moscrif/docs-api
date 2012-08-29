/**

Sensor class manages all operations with hardware sensors.
@class Sensor
@module sensor
*/
class Sensor
{

    /**
    Constructor creates new  Sensor object, which provides access to various types of sensors.
    @method this
    @param type {Symbol} Type of sensor.

    * #acceleration
    * #magnetic
    * #proximity
    * #tilt
    @param interval {interval} Time interval in milliseconds.
    @return {Sensor} Created new instance of sensor class
    @example
        var sensor = new Sensor(#acceleration, 40);
        // setup handler for receiving data
        sensor.onDataReceived = function(sender, timestamp, params) {
            var (x, y, z) = (params[0], params[1], params[2]);
        };
        // start receiving data
        sensor.start();
    */
    function this(type, interval) { }

    /**
    Check if sensor is available on the device. Otherwise it returns false.
    @method isAvailable
    @param type {Symbol} Type of sensor.

    * #acceleration  [/li]
    * #magnetic  [/li]
    * #proximity  [/li]
    * #tilt
    @return {Boolean} True if sensor is available on the device. Otherwise it returns false.
    @example
            if (!Sensor.isAvailable(#acceleration))
                System.messageBox("No accelometer detected!");
    */
    function isAvailable(type) { }

    /**
    This function starts sending data from sensor. When new data are available, object calls callback functions.
    @method start
    @example
            var sensor = new Sensor(#acceleration, 40);
            // setup handler for receiving data
            sensor.onDataReceived = function(sender, timestamp, params) {
                var (x, y, z) = (params[0], params[1], params[2]);
            };
            // start receiving data
            sensor.start();
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
    Clears all resources from memory.
    @method dispose
    */
    function dispose() { }

    /**
    Sensor calls this callback function, when new data is available.
    @param timestamp {Integer} Timestamp information.
    @param params {Array} Data from sensor. Usually three values, except proximity sensor. Proximity sensor returns only one value in the array.
    @event onDataReceived
    @example
            var sensor = new Sensor(#acceleration, 40);
            // setup handler for receiving data
            sensor.onDataReceived = function(sender, timestamp, params) {
                var (x, y, z) = (params[0], params[1], params[2]);
            };
            // start receiving data
            sensor.start();
    */
    function onDataReceived(timestamp, params) { }


}