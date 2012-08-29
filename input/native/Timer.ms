/**

Generates recurring events in an application.
@class Timer
@module core
@example
        // Just one scheduled execution:
        var once = new Timer(100, false); // interval make no sense here
        once.start(500); // dealyed start
        one.onTick = function(sender) { }
        
        // each 500ms, repeats 3times only:
        var threeTimes = new Timer(500, 3);
*/
class Timer
{

    /**
    Constructs timer object.
    @method this
    @param interval {Float} Interval in miliseconds at which to raise the onTick event.
    @param repeatOrTimes {Boolean|Integer} Boolean value (true or false) indicates whether timer repeats or executes once. Integer value indicates number offset times to be executed0.
    */
    function this(interval [, repeatOrTimes ]) { }

    /**
    Stops and disposes timer object.
    @method dispose
    */
    function dispose()
    {
    }

    /**
    Starts this timer.
    @method start
    @param [delay] {Integer} Indicates delayed start. Values is expressed in miliseconds.
    */
    function start([delay])
    {
    }

    /**
    Stops this timer. Stopped timer is still valid and can be used later. To destruct timer object you have to call dispose() method.
    @method stop
    */
    function stop()
    {
    }



}