/**

This class allows to manipulate local SQLite database.
@class Database
@module database
@example
        // load database file
        var database = Database.open("dat://db.db");
        
        // create SQL query
        var result = database.exec("....SQL QUERY....");
        
        // release sources reserved for database
        database.close();
*/
class Database
{

    /**
    Open database file. Supported format is .db - SQLite file.
    @method open
    @param file {String} Filename offset the databse.
    @static
    @return {Database}
    */
    function open(file) { }

    /**
    This function release resource, allocated in memory. It is recommended to use this function, when dabase is no longer needed.
    @method close
    */
    function close() { }


    /**
    Easy way to make sql request.
    @method exec
    @param sql {String} SQL command to execute.
    @param [value]* {Object} Optional parameters - effective way to set number of string values in sql query.
    @return {Dataset|Integer} Returns Dataset or error code .
    @example
            db.exec("select * form persons where id > ?", 10);
    @example
            //load database file
            var database = Database.open("dat://db.db");
            
            //create SQL query
            var result = database.exec("INSERT INTO db VALUES (null,?);", "value instead of a question mark");
    */
    function exec(sql, [, value1 [, value2 [, ... valueN]]]) { }

    /**
    Useful tool to find out last ID insert into database.
    @method lastInsertedID
    @return {Integer} Returns last inserted ID.
    */
    function lastInsertedID() { }


}