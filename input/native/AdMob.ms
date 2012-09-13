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
    @param bannerSize {Symbol} Banner size allows you to control banner ad size.

    * #default - typically 320x50
    * #medium - medium rectangle size for the tablets, typically 300x250
    * #full - full banner size for the tablets, typically 468x60
    * #leaderboard - leaderboard size for the tablets. Typically 728x90.
    * #skyscraper - skyscraper size for the tablets. Mediation only. AdMob/Google does not offer this size. Typically 120x600
    * #smartPortrait - an ad size that spans the full width of the application in portrait orientation. The height is typically 50 pixels on an iPhone/iPod UI, and 90 pixels tall on an iPad UI.
    * #smartLandscape - an ad size that spans the full width of the application in landscape orientation. The height is typically 32 pixels on an iPhone/iPod UI, and 90 pixels tall on an iPad UI.
    */
    function this(adId, bannerSize = #default) { }

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
