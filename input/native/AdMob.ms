/**
The AdMob class encapsulated the Google Ads SDK, the latest generation in Google mobile advertising featuring refined ad formats.
@class AdMob
@extends Object
@module ads
*/
class AdMob
{
    /**
    Constructs new instance of AdMob object.
    @method this
    @param adId {String} AdMob publisher ID
    */
    function this(adId) { }

    /**
    This static method returns true if AdMobs is available, false otherwise.
    @method isAvailable
    @return {Boolean} true if AdMob is allowed, false otherwise.
    @static
    @example
        if (AdMob.isAvailable()) {
            console << "AdMob is supported";
        } else {
            console << "AdMob is disabled!";
        }
    */
    function isAvailable() { }

    /**
    This method creates and shows ad banner at specified position on screen.
    @method show
    @param x {Integer} x coordinate of screen's position.
    @param y {Integer} y coordinate of screen's position.
    @param [testing=false] {Boolean} You have to set to true when testing.
    @example
        var adMob = new AdMob("publisher-id");
        adMob.show(0, 0);
    */
    function show(x, y, testing = false) { }

    /**
    This method hides ad banner.
    @method hide
    */
    function hide() { }

}
