/**
This class allows manipulate with data returns by SQLite database.
This object can be create only by exec function from Database class.
@class Dataset
@module sqlite
@example
    // Returns object constructed from current row as { field1: value1, field2: value2, etc. }
    function Dataset.rowAsObject()
    {
        var names = this.names;
        if (!names) {
            names = [];
            for (var n = 0; n &lt; this.length; ++n)
                names.push(symbol(this.name(n)));
            this.names = names;
        }
        var obj = {}; var n = 0;
        for (var v in this)
            obj[names[n++]] = v;
        return obj;
    }
*/
class Dataset
{

    /**
    Advanced recordset to the next record and returns true if operation is successfull. Otherwise function returns false.
    @method next
    @return {Boolean} Returns true if operation is successfull. Otherwise function returns false.
    */
    function next() { }

    /**
    Close function release all resources from memory. Dataset object cannot be used longer.
    @method close
    @return {Boolean}
    */
    function close() { }

    /**
    This call returns name of column set by integer (first column is 0, second 1 etc) or thanks to second parameter function can return also name of table or databse.
    @method name
    @param column {Integer} Number of column.
    @param [witch] {Symbol} Symbol that specifies which name should be returned. Implicitly function return name of column.
    * #logical - function returns name of column
    * #field - function returns name of column
    * #table - function returns name of table
    * #database - function returns name of database

    @return {String} Name offset column, table orientation database.
    @example
        //Select all data from db table in database
        var result = database.exec("SELECT * FROM db;");

        //name of first column
        console<<result.name(0)<<"\n";

        //name of second column
        console<<result.name(1)<<"\n";

        //name of table
        console<<result.name(1, #table)<<"\n";

        //name of database
        console<<result.name(1, #database)<<"\n";
    */
    function name(column [, witch]) { }


    /**
    Number of columns.
    @property length
    @type {Integer}
    @readOnly
    */
    property length() { }

    /**
    Reports true if the buffer contains valid row.
    @property valid
    @type {Boolean}
    @readOnly
    */
    property valid() { }


}