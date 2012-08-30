/**
Sealed class that encapsulated {{#crossLink "AppStore"}}{{/crossLink}} transaction. The objects of this class are created during transaction callbacks.
@class AppStoreTransaction
@extends Object
@module store
*/
class AppStoreTransaction
{
    /** Product identifier.
    @property productIdentifier
    @type String
    */
    property productIdentifier(v) { get; }

    /** String representation of the transaction identifier.
    @property transactionIdentifier
    @type String
    */
    property transactionIdentifier(v) { get; }
}