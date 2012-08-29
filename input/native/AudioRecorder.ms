/**

This class provides the ability to record sounds and music files.
@class AudioRecorder

@module media
*/
class AudioRecorder
{

    /**
    Construct new recorder class.
    @method this
    */
    function this() { }

    /**
    @method openFile
    @param file {String} Name of file to open.
    */
    function openFile(file) { }


    /**
    This call, starts playing opened file.
    @method record
    */
    function record() { }

    /**
    The pause function pauses playing. The next time you use the start function, playback will continue from the time when it was paused.
    @method pause
    */
    function pause() { }

    /**
    This function stops the playback.
    @method stop
    */
    function stop() { }

    /**
    This function stops the playback.
    @method cancel
    */
    function cancel() { }

    /**
    Dispose function releases resource, allocated in memory. For Audio Player object it is for example opened file.
    @method dispose
    */
    function dispose() { }

}