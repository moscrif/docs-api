/**
In-App Purchases are encapsulated in objects of the AppStore class. This class supports only Apple iTunes Store. Google's Android Market will be added soon
in separate class.
@class AppStore
@extends Object
@module store
*/
class AppStore
{
    /**
    Constructs new instance of AppStore object.
    @method this
    */
    function this()
    {
    }

    /**
    This static method returns true if purchases are allowed, false otherwise.
    iOS device can be disabled to make payments (to prevent children from accidentally purchasing things without parents' permission).
    @method isAvailable
    @return {Boolean} true if purchases are allowed, false otherwise.
    @static
    @example
        if (AppStore.isAvailable()) {
            console << "Apple iTunes Store is supported";
        } else {
            console << "Apple iTunes Store is not supported, or it is disabled!";
        }
    */
    function isAvailable()
    {
    }

    /**
    Requests list of available items for sale. See {{#crossLink "AppStore/onProductsRetrieved"}}{{/crossLink}}
    @method requestProducts
    @param identifiers {Array} List of Strings of product identifiers you want to retrieve information.
    @example
        var appStore = new AppStore();
        appStore.onProductsRetrieved = function (valid, invalid) {
            for (var val in valid) {
                console << val.productIdentifier << "\n";
                console << val.title << "\n";
                console << val.description << "\n";
                console << val.price << "\n";
                console << val.priceLocale << "\n";
                console << "\n";
            }
            for (var inv in invalid)
                console << "invalid product identifier: " << inv << "";
        }
        appStore.requestProducts(["com.company.productA.feature1", "com.company.productA.feature2"]);
    */
    function requestProducts(identifiers)
    {
    }

    /**
    This method send purchase request to the store of the given product identifier.
    @method purchase
    @param identifier {String}
    @example
        var appStore = new AppStore();
        appStore.purchase("com.company.productA.feature1");
    */
    function purchase(identifier)
    {
    }

    /**
    To confirm finish of purchase process to have to call this method otherwise AppStore will think the transaction was interrupted
    and will attempt to resume it on the next application launch.
    @method finish
    @param transaction {AppStoreTransaction} The transaction object created during callbacks.
    */
    function finish(transaction)
    {
    }

    /**
    Called when the App Store responds to the product request {{#crossLink "AppStore/requestProducts"}}{{/crossLink}}
    @event onProductsRetrieved
    @param valid {Array} List of valid products
    @param invalid {Array} Array of strings of invalid product identfiers.
    @example
        var appStore = new AppStore();
        appStore.onProductsRetrieved = function (valid, invalid) {
            for (var val in valid) {
                console << val.productIdentifier << "\n";
                console << val.title << "\n";
                console << val.description << "\n";
                console << val.price << "\n";
                console << val.priceLocale << "\n";
                console << "\n";
            }
            for (var inv in invalid)
                console << "invalid product identifier: " << inv << "";
        }
        appStore.requestProducts(["com.company.productA.feature1", "com.company.productA.feature2"]);
    */
    property onProductsRetrieved(v) { get; set; }

    /**
    Called when the purchase has been successfully processed.
    @event onTransactionCompleted
    @param transaction {AppStoreTransaction}
    @example
        var appStore = new AppStore();
        appStore.onTransactionCompleted = function(transaction) {
            appStore.finish(transaction);
        }
        appStore.purchase("com.company.productA.feature1");
    */
    property onTransactionCompleted(v) { get; set; }

    /**
    Called when the purchase has been failed.
    @event onTransactionFailed
    @param transaction {AppStoreTransaction}
    @param errorCode {Integer}
    @param errorMessage {String}
    @example
        var appStore = new AppStore();
        appStore.onTransactionFailed = function(transaction, errorCode, errorMessage) {
            appStore.finish(transaction);
            console << "Error #" << errorCode << "\n";
            console << "\t" << errorMessage << "\n";
        }
        appStore.purchase("com.company.productA.feature1");
    */
    property onTransactionFailed(v) { get; set; }

    /**
    Called when the purchase has been restored.
    @event onTransactionRestored
    @param transaction {AppStoreTransaction}
    @example
        var appStore = new AppStore();
        appStore.onTransactionRestored = function(transaction) {
            console << "Transaction of product identifier " << transaction.productIdentifier << " has been restored.\n";
        }
        appStore.purchase("com.company.productA.feature1");
    */
    property onTransactionRestored(v) { get; set; }

}
