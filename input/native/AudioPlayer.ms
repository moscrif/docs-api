/**

This class provides the ability to play back sounds and music files on a device.
    By default, this class supports free formats like: wav, ogg and mod but most platforms support also other frequently used formats like mp3.
@class AudioPlayer

@module media
@example
    // create new player and load source file
    this.player = new AudioPlayer();
    this.player.openFile("dat://xxx.ogg");

    .....

    // play sound if nothing is playing
    if (!this.player.playing)
        this.player.play();
    // otherwise pause playing
    else
        this.player.pause();
*/
class AudioPlayer
{

    /**
    Object constructor creates new instance of AudioPlayer class.
    @method this
    */
    function this() { }

    /**
    Easy way to open file for playing. By default, following audio formats are supported:

                .wav - is suitable for short sounds or effects in games or apps
                .mod - is great format for simple game music because it is easy to CPU
                .ogg - is a free format suitable for high quality digital multimedia, designed as an alternative to non-free formats
    In addition, mobile devices can support also other audio formats like mp3 etc., which means that these formats can also be supported.
    @method openFile
    @param file {String} Name of file to open.
    */
    function openFile(file) { }


    /**
    This call, starts playing opened file.
    @method play
    */
    function play() { }

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
    Dispose function releases resource, allocated in memory. For Audio Player object it is for example opened file.
    @method dispose
    */
    function dispose() { }

    /**
    Efficient way to rewind plaing song.
    @param percent {Integer} Value between 0 and 100. Zero means begin of the song and 100 end of the song.
    @method seek
    @example
        //start playing
        player.play();
        //seek song to the 10% of time
        player.seek(10);
    */
    function seek(percent) { }

    /**
    Loop function determines, what happens after the song end.
        However, this function has to be used before play function.
    @param percent {Boolean} If this parameter is set to true, the song will play again.
    @method loop
    @example
        // set loop to true - play song again
        this.player.loop(true);
        // start playing
        this.player.play();
    */
    function loop(repeat) { }

    /**
    When player is playing some file value is true. Otherwise, it is false.
    @property playing
    @type {Boolean}
    @readOnly
    */
    property playing() { }

    /**
    Value between zero and song duration.
    @property position
    @type {Integer}
    @readOnly
    */
    property position() { }

    /**
    Value expressing the length of songs.
    @property duration
    @type {Integer}
    @readOnly
    */
    property duration() { }

}