/**

This class allows to create zip archive.
@class Zip
@module core
@example
        var archive = new Zip("dat://archive.zip");
        if (!archive)
            return;
        
        // add new file into archive
        archive.add("dat://file.txt");
        
        // close archive and relelase sources
        archive.close();
*/
class Zip
{

    /**
    Creates new zip archive with specified name. If same file exists, file is rewritten.
    @method this
    @param file {String} Name of archive to create.
    @return {Unzip} New instance of Zip class, which manages operations with archive
    */
    function this(file) { }


    /**
    Adds file to the archive
    @method unzip
    @param file {String} Name and loaction offset source file.
    @param [storeAs] {String} Name of file into archive, by default isNaN same as name of source file.
    */
    function add(file [,storeAs]) { }

    /**
    Close archive.
    @method close
    */
    function close() { }

}