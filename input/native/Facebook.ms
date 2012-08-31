/**
This class provides access to Facebook Connect. It class allows a user to login, logout, post messages, pictures,
retrieves stati, friends etc.
@class Facebook
@module net
*/
class Facebook
{
    /** Contructs new Facebook client.
    @method this
    @param appId="" {String} The Facebook application identifier.
    @param permissions=null {Array} The list of strings of required permissions.
    @example
        var facebook = new Facebook("288852541221599", ["offline_access", "status_update", "read_stream", "publish_stream"]);
    */
    function this(appId = "", permissions = null) { }

    /**
    Returns true when Facebook Connect is supported, otherwise false.
    @method isAvailable
    @static
    */
    function isAvailable() { }

    /**
    Prompts the user to login to Facebook.
    @method login
    */
    function login() { }

    /**
    Logs out user from Facebook Connect.
    @method logout
    */
    function logout() { }

    /**
    Get or post data to the logged in Facebook account.
    @method request
    @param path {String}
    @param method=#get {Symbol} HTTP method, can be #get or #post.
    @param params=null {Object} JSON object to be sent to Facebook.
        For more information visit [Facebook Graph API](http://developers.facebook.com/docs/reference/api/post/).
    @example
        facebook.request("me", #get);
        facebook.onRequest = function(data)
        {
            data.debugShow();
        }
    */
    function request(path, method = #get, params = null) { }

    /**
    Displays a Facebook UI dialog for publishing posts to a user's stream. This is very easy way to post any data to user's wall.
    @method dialog
    */
    function dialog() { }

    /**
    Called when the user has been successfully logged in.
    @event onLogin
    */
    property onLogin(v) { }

    /**
    @event onLoginFailed
    @param status {String} Reason of failure.
    */
    property onLoginFailed(v) { }

    /**
    Called when {{#crossLink "Facebook/request"}}{{/crossLink}} has been returned successfully.
    @event onRequest
    @param data {Object} The response in JSON format.
    */
    property onRequest(v) { }

    /**
    Called when {{#crossLink "Facebook/request"}}{{/crossLink}} has been failed.
    @event onRequestFailed
    @param status {String} Reason of failure.
    */
    property onRequestFailed(v) { }

    /**
    Called when {{#crossLink "Facebook/dialog"}}{{/crossLink}} has been returned successfully.
    @event onDialog
    */
    property onDialog(v) { }

    /**
    Called when {{#crossLink "Facebook/dialog"}}{{/crossLink}} has been failed.
    @event onDialogFailed
    @param status {String} Reason of failure
    */
    property onDialogFailed(v) { }
}