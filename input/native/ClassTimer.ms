/**

This class creates shape for circular physical bodies.
@class ClassTimer
@module core
*/
class ClassTimer
{

    /**
    Creates new instance of Timer class.
    @method this
    @param interval {Float} Time interval in miliseconds.
    @param repeatOrTimes {Boolean|Integer} Number of repetitions or true.

    @example
            var timer = new Timer(1000 , true);
            timer.onTick = function(sender)
            {
            ...
            }
            timer.start(1000);
            // or
            var timer = new Timer(1000 , 3);
            timer.onTick = function(sender)
            {
            console&lt;&lt;"timer\n";
            }
            timer.start(1000)
    */
    function this(interval [, repeatOrTimes ]) { }

    /**
    Starts timer.
    @method start
    @param [delay] {Integer} Time delay in miliseconds.
    @example
            var timer = new Timer(1000, true);
            timer.onTick = function(sender)
            {
            ...
            }
            timer.start(1000);
    */
    function start([delay])
    {
    }

    /**
    Temporary suspend of timer (can be resumed by start method).
    @method stop
    @example
            var timer = new Timer(1000 , true);
            timer.onTick = function(sender)
            {
            console&lt;&lt;"timer\n";
            }
            timer.start(1000);
            …
            timer.stop();
            ..
            timer.start();
    */
    function stop()
    {
    }

    /**
    Completely destroy of timer (no way to use after destruction).
    @method dispose
    */
    function dispose()
    {
    }

    /**
    @method onTick
    @example
        var timer = new Timer(1000 , true);
        timer.onTick = function(sender)
        {
        ...
        }
        timer.start(1000);
    */
    function onTick()
    {
    }


}