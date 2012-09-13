/**
The iAd class encapsulated the Apple iAd banner advertisements. This class is available only on iOS.
On iPhone, a portrait banner is 320 points by 50 points in size. On iPad, a portrait banner is 768 points by 66 points in size.
On iPhone, a landscape banner is 480 points by 32 points in size. On iPad, a landscape banner is 1024 points by 66 points in size.
@class iAd
@extends Object
@module ads
*/
class iAd
{
    /**
    Constructs new instance of iAd object.
    @method this
    */
    function this() { }

    /*
    This static method returns true if iAd is available, false otherwise.
    @method isAvailable
    @return {Boolean} true if iAd is allowed, false otherwise.
    @static
    @example
        if (iAd.isAvailable()) {
            console << "iAd is supported";
        } else {
            console << "iAd is disabled!";
        }
    function isAvailable() { }
    */

    /**
    This method creates and shows ad banner at specified position on screen.
    @method show
    @param x {Integer} x coordinate of screen's position.
    @param y {Integer} y coordinate of screen's position.
    @example
        var iAd = new iAd();
        adMob.show(0, 0);
    */
    function show(x, y) { }

    /**
    This method hides ad banner.
    @method hide
    */
    function hide() { }

}
