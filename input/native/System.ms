/**
This class represents underlying system.
@class System
@module core
*/
class System
{

    /**
    Displays a modal dialog box that contains text and OK button.
    @method messageBox
    @param fmessage {String} Text to be displayed in the dialog box
    @return {Boolean} True when user click to the button
    @example
        var location = System.path(#USER_DOCUMENTS);
        if (System.isFile(location+"/userFile.txt"))
            console<<"File size: " << System.getFileSize(location+"/userFile.txt") << "B\n";
        else
            System.messageBox("this file does not exists");
    */
    function messageBox(message) { }

    /**
    Displays system (build-in native) keyboard.
    @method requestKeyboard
    @param callback {Function} Callback function.
    @param keyboardType {Symbol}

    * #default
    * #email
    * #web
    * #pin
    * #phone

    @return {Boolean} True when system keyboard is available.
    @example
        function processKey(sender, key)
        {
            console << "key on keyboard: " << key << "\n";
        }
        if (!System.requestKeyboard(processKey, #default)) {
            // use software keyboard
            // swKeyboard = new Keyboard();
            swKeyboard.visible = false;
        }
    */
    function requestKeyboard(callback, keyboardType) { }

    /**
    Hide system (build-in native) keyboard.
    @method hideKeyboard
    @example
            // system keyboad is not supported in emulator
            if(System.IS_EMULATOR === false)
                System.hideKeyboard();
    */
    function hideKeyboard() { }

    /**
    This function tries to find all files in required format at specified location.
    @method scanFiles
    @param path {String} Folder, inside which we want to search and also format of required files f.e.: "dat://folder/*.txt".
    @param [ef] {Function} Function, which is called for each found file. This function should accept two parameters (name of file and file flag) and returns true for continue searching or false for stop searching.
    @return {Integer} Number of found files.
    @example
        function manage(name, flag)
        {
            console<<"file name: "<<name<<" flag: "<<flag<<"\n";  // displays information about file
            return true;    // search for another file (return false for stop searching)
        }
        System.scanFiles("dat://folder/*.txt", manage); //search for txt files in dat://folder/ returns number of files
    */
    function scanFiles(path, ef) { }

    /**
    Function returns home of the current application.
    @method home
    @return {String} Location of application file
    */
    function home() { }

    /**
    Creates path to the required folder. F.e.: folder with user documents, program files etc. This folders can be placed diferents on diferent platforms.
    @param folder {Symbol} Specification of folder

    * #SYSTEM
    * #SYSTEM_BIN
    * #PROGRAM_FILES
    * #USER_APPDATA
    * #USER_HOME
    * #COMMON_APPDATA
    * #USER_DOCUMENTS
    * #COMMON_DOCUMENTS
    @method path
    @return {String} Path to required folder
    @example
        // get location of “my documents” folder
        var location = System.path(#USER_DOCUMENTS);
        if (System.isFile(location+"/userFile.txt"))
            System.deleteFile(location+"/userFile.txt");  //delete file from directory, where user's documents are saved usually
        else;
            // this file does not exists
    */
    function path(folder) { }

    /**
    This functions manages some system operations like mail or sms sending, calling, pictures taking etc.
    @param cmd {Object} Use module name (command line) or  Available commands:

    * "call-to"
    * "mail-to" - send mail
    * "sms-to"
    * "take-image" - takes a photo using the camera
    * "show-image" - show image in built-in image viewer
    * "record-video" - record video; parameter file: is overwriten if exists, callback: function which accept maximum of one parameter (location of taken video)
    * "play-video" - play video in default video player
    * "open-url" - open url in web browser

    @param [args] {String} Command line arguments.
    @param [dir] {String} orking directory.

    @method exec
    @return {Boolean} True if function succeed
    @example
        // "call-to"
        System.exec ({
            command: "call-to",
            phone: "00421954444333";

        });

        //"mail-to"
        System.exec ({
            command: "mail-to",
            to: "support@mothiva.com",
            cc: "carbon copy",
            bcc: "blind carbon copy",
            subject: "mail subject",
            body: "text of mail",
        });

        //"sms-to"
        System.exec ({
            command: "sms-to",
            to: "00421954444333",
            text: "message text",
        });

        //"take-image"
        var callBack = function(file)
        {
            console<<file<<"\n"; // returns image location
        }
        System.exec({
            command: "take-image",
            file: "dat://image.jpg",
            callback: callBack,
        });

        //"show-image"
        System.exec({
            command: "show-image",
            file: "dat://image.jpg",
        });
    */
    function exec(cmd, args = null, dir = null) { }

    /**
    Checks, if file (sets by parameter) exists.
    @param file {String} SPath to file to check existance
    @method isFile
    @return {Boolean} True if file exists, otherwise returns false
    @example
        System.isFile("dat://folder/a.txt"); // returns true if file exists

        var location = System.path(#USER_DOCUMENTS);
        if (System.isFile(location+"/userFile.txt"))
            System.deleteFile(location+"/userFile.txt");  //delete file from directory, where user's documents are saved usually
        else;
            // this file does not exists
    */
    function isFile(file) { }

    /**
    Checks, if directory / folder (sets by parameter) exists.
    @param dir {String} Directory location to check.
    @method isDir
    @return {Boolean} True if directory / folder exists, otherwise returns false.
    @example
        System.isDir("dat://folder/subfolder"); // returns true if subfolder exists

        var location = System.path(#USER_DOCUMENTS);
        if (!System.isDir(location+"/newFolder"))
            System.createDir(location+"/newFolder");  //create new folder in directory, where user's documents are saved usually
        else;
            // this folder alredy exists
    */
    function isDir(dir) { }


    /**
    Delete file.
    @param file {String} Location of file to delete. If file does not exist function returns false
    @method deleteFile
    @return {Boolean} True if function succeed.
    @example
        var location = System.path(#USER_DOCUMENTS);
        if (System.isFile(location+"/userFile.txt"))
            System.deleteFile(location+"/userFile.txt");  //delete file from directory, where user's documents are saved usually
        else
            // this file does not exists
    */
    function deleteFile(file) { }

    /**
    Delete directory / folder. Folder have to be empty.
    @param dir {String} Location of directory / folder to delete. If directory does not exist function returns false.
    @method deleteDir
    @return {Boolean} True if function succeed.
    @example
            var location = System.path(#USER_DOCUMENTS);
            if (System.isDir(location+"/newFolder"))
                System.deleteDir(location+"/newFolder");  //delete folder in directory, where user's documents are saved usually
            else;
                // this folder does not exists
    */
    function deleteDir(file) { }

    /**
    Copy source file to destination. If destination file exists and owerwrite is true function rewrites the file.
    @param source {String} Source file.
    @param destination {String} Destination.
    @param [overwrite=false] {Boolean} Determines what happen when destination file exists. If destination file exists and owerwrite is true function rewrites the file. If overwrite is false function fails. default: false.
    @method copyFile
    @return {Boolean} True if function succeed, otherwise returns false.
    @example
            System.copyFile("dat://source.txt", "dat://destination.txt");
    */
    function copyFile(source, destination, overwrite = false) { }

    /**
    Returns size of file in bytes.
    @param file {String} File location
    @param destination {String} Destination.
    @param [overwrite] {Boolean} Determines what happen when destination file exists. If destination file exists and owerwrite is true function rewrites the file. If overwrite is false function fails. default: false.
    @method getFileSize
    @return {integer} Size of the file.
    @example
        var location = System.path(#USER_DOCUMENTS);
        if (System.isFile(location+"/userFile.txt"))
            console<<"File size: " << System.getFileSize(location+"/userFile.txt") << "B\n";
        else
            // this file does not exists
    */
    function getFileSize(file) { }

    /**
    Creates directory
    @param dir {String} Location and name of new directory If directory exists function returns false.
    @param [createSubDirs=false] {Boolean}
    @method createDir
    @return {Boolean} True if function succeed, otherwise returns false
    @example
        var location = System.path(#USER_DOCUMENTS);
        if (!System.isDir(location+"/newFolder"))
            System.createDir(location+"/newFolder");  //create new folder in directory, where user's documents are saved usually
        else;
            // this folder alredy exists
    */
    function createDir(dir, createSubDirs = false) { }

    /**
    Resets application's data. (Android only).
    @method resetApplicationData
    @return {Boolean} True if function succeed, otherwise returns false
    */
    function resetApplicationData() { }

    /**
    Returns the abbreviated name of the language, ISO Standard 639 names. List of ISO 639-1 code is available here: http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    @property language
    @type {String}
    @readOnly
    */
    property language(v) { }

    /**
    The country (or the region) name, based on ISO Standard 3166.
    @property country
    @type {String}
    @readOnly
    */
    property country(v) { }

    /**
     Number of miliseconds. This property is suitable for animation (game) scheduling.
    @property tick
    @type {Integer}
    @readOnly
    */
    property tick(v) { }

    /**
    Avarage number of frames per second.
    @property avgFPS
    @type {Float}
    @readOnly
    */
    property avgFPS(v) { }

    /**
    Minimum number of frames per second.
    @property minFPS
    @type {Float}
    @readOnly
    */
    property minFPS(v) { }

    /**
    Maximum number of frames per second.
    @property maxFPS
    @type {Float}
    @readOnly
    */
    property maxFPS(v) { }

    /**
    Average render time in ms.
    @property avgRender
    @type {Float}
    @readOnly
    */
    property avgRender(v) { }

    /**
    Minimum render time in ms.
    @property minRender
    @type {Float}
    @readOnly
    */
    property minRender(v) { }

    /**
    Maximum render time in ms.
    @property maxRender
    @type {Float}
    @readOnly
    */
    property maxRender(v) { }

    /**
    Width of the device screen
    @property width
    @type {integer}
    @readOnly
    */
    property width(v) { }

    /**
    Height of the device screen
    @property height
    @type {integer}
    @readOnly
    */
    property height(v) { }

    /**
    Returns device's unique identifier
    @property deviceId
    @type {String}
    @readOnly
    */
    property deviceId(v) { }

    /**
    Returns application's unique identifier.
    @property applicationId
    @type {String}
    @readOnly
    */
    property applicationId(v) { }

   /**
    Returns Moscrif's RSA public key.
    @property publicKey
    @type {String}
    @readOnly
    */
    property publicKey(v) { }

   /**
    Gets the device's operating system. Following symbols can be returned:

    * #Windows
    * #Mac
    * #linux
    * #iOS
    * #Android
    * #bada*
     #Symbian
    @property OS_NAME
    @type {String}
    @final
    @readOnly
    */
    property OS_NAME(v) { }

/**
    Flag used for read-only files.
    @property IS_READONLY
    @type {Integer}
    @readOnly
    */
    property IS_READONLY(v) { }

/**
    Flag used for directories.
    @property IS_DIR
    @type {Integer}
    @readOnly
    */
    property IS_DIR(v) { }

/**
    Flag used for hidden files and directories.
    @property IS_HIDDEN
    @type {Integer}
    @readOnly
    */
    property IS_HIDDEN(v) { }

/**
    Flag used for system files and directories.
    @property IS_SYSTEM
    @type {Integer}
    @readOnly
    */
    property IS_SYSTEM(v) { }

/**
    True if application runs in emulator.
    @property IS_EMULATOR
    @type {Boolean}
    @readOnly
    */
    property IS_EMULATOR(v) { }

/**
    True for debug version of Moscrif run-time.
    @property IS_RT_DEBUG
    @type {Boolean}
    @readOnly
    */
    property IS_RT_DEBUG(v) { }

/**
    True if aplication runs on tablet.
    @property IS_TABLET
    @type {Boolean}
    @readOnly
    */
    property IS_TABLET(v) { }

/**
    True if application is currently in debug mode.
    @property IS_DEBUG
    @type {Boolean}
    @readOnly
    */
    property IS_DEBUG(v) { }
}