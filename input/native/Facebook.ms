/**
This class provides access to Facebook Connect. It class allows a user to login, logout, post messages, pictures,
retrieves status, friends etc.
@class Facebook
@module net
*/
class Facebook
{
    /**
    Returns true when Facebook Connect is supported, otherwise false.
    @method isAvailable
    @static
    */
    function isAvailable() { }

    /** Contructs new Facebook client.
    @method this
    @param appId = "" {String} The Facebook application identifier.
    @param permissions = null {Array} The list of strings of required permissions.
    @example
        var facebook = new Facebook("", ["offline_access", "status_update", "read_stream", "publish_stream"]);

        var facebook = new Facebook("288852541221599", ["offline_access", "status_update", "read_stream", "publish_stream"]);
    */
    function this(appId = "", permissions = null) { }

    /**
    Prompts the user to login to Facebook.
    @method login
    */
    function login() { }

    /**
    Called when the user has been successfully logged in.
    @event onLogin
    */
    property onLogin() { }

    /**
    @event onLoginFailed
    @param error {String} Reason of failure.
    */
    property onLoginFailed(error) { }

    /**
    Logs out user from Facebook Connect.
    @method logout
    */
    function logout() { }

    /**
    Called when the user has been successfully logged out.
    @event onLogout
    */
    property onLogout() { }

    /**
    Get or post data to the logged in Facebook account.
    @method request
    @param path {String} The Graph API endpoint.
    @param method = #get {Symbol} The HTTP method, can be #get or #post.
    @param params = null {Object} The parameters in JSON object to be sent to Facebook.
        For more information visit [Facebook Graph API](http://developers.facebook.com/docs/reference/api/post/).
    @example
        facebook.request("me");

        facebook.request("me/friends", #get);

        facebook.request("me/picture", #get, {redirect: false, type: "large"});

        facebook.request("me/feed", #post, {title: "Moscrif Test", type: "status", message: "Moscrif Test.", description: "Moscrif test."});

        facebook.request("me/feed", #post, {title: "Moscrif Test", type: "link", link: "http://moscrif.com", picture: "http://moscrif.com/images/logo.png", description: "Moscrif test."});

        var bitmap = Bitmap.fromFile("app://foto.jpg");
        facebook.request("me/photos", #post, {title: "Moscrif Test", source: bitmap, message: "Moscrif Test.", description: "Moscrif test."});
    */
    function request(path, method = #get, params = null) { }

    /**
    Called when {{#crossLink "Facebook/request"}}{{/crossLink}} has been returned successfully.
    @event onRequest
    @param data {Object} The response in JSON format.
    @example
        facebook.onRequest = function(data)
        {
            logI("onRequest : ", data.debugShow());
        }
    */
    property onRequest(data) { }

    /**
    Called when {{#crossLink "Facebook/request"}}{{/crossLink}} has been failed.
    @event onRequestFailed
    @param error {String} Reason of failure.
    @example
        facebook.onRequestFailed = function(error)
        {
            logI("onRequestFailed : ", error.debugShow());
        }
    */
    property onRequestFailed(error) { }

    /**
    Displays a Facebook UI dialog for publishing posts to a user's stream. This is very easy way to post any data to user's wall.
    @method dialog
    @param url {String} URL to be used in Dialog.
    @param params = null {Object} The parameters in JSON object to be sent to Dialog.
    @example
        facebook.dialog("feed", {caption: "Moscrif Test.", link: "http://moscrif.com", picture: "http://moscrif.com/images/logo.png", actions: {name: "Moscrif Test", link: "http://moscrif.com"}, description: "Moscrif test."});
    */
    function dialog(url, params = null) { }

    /**
    Called when {{#crossLink "Facebook/dialog"}}{{/crossLink}} has been returned successfully.
    @event onDialog
    @param url {String} The response in url format.
    @example
        facebook.onDialog = function(url)
        {
            logI("onDialog : ", url.debugShow());
        }
    */
    property onDialog(url) { }

    /**
    Called when {{#crossLink "Facebook/dialog"}}{{/crossLink}} has been failed.
    @event onDialogFailed
    @param error {String} Reason of failure.
    @example
        facebook.onDialogFailed = function(error)
        {
            logI("onDialogFailed : ", error.debugShow());
        }
    */
    property onDialogFailed(error) { }
}