/**

This class allows to extract zip archive.
@class Unzip
@module core
@example
        var archive = new Unzip("dat://archive.zip");
        if (!archive || !archive.first())
            return;
        
        // extract all files to the application folder
        do {
            archive.unzip("dat://");
        } while (archive.next());
*/
class Unzip
{

    /**
    Object constructor - creates new instance of Unzip class.
    @method this
    @param file {String} Location of the archive.
    @return {Unzip}
    */
    function this(file) { }

    /**
    Sets first file as a "active file". Property currentFileInfo has values of this file.
    @method first
    @return {Boolean} True, if operation was succesfull.
    */
    function first() { }

    /**
    Sets next file as a "active file". Property currentFileInfo has values of this file.
    @method next
    @return {Boolean} True, if operation was succesfull.
    */
    function next() { }

    /**
    This function unzips file, which was set by first() and next() functions, to the directory.
    @method unzip
    @param directory {String} Directory to place unzipped files.
    */
    function unzip(directory) { }

    /**
    Close the archive and release all resources in the memory.
    @method close
    */
    function close() { }

    /**
    Count of a files in the archive.
    @property count
    @type {Integer}
    @readOnly
    */
    property count() { }

    /**
    Information about a file from the archive. The file, about which information are required, can be set by first() and next() functions. This property is an object consisted from three members: fileName, compressedSize and uncompressedSize.
    @property currentFileInfo
    @type {Object}
    @readOnly
    */
    property currentFileInfo() { }


}