/**
Bitmap class manages all operations with pictures. Using this class developer can load images from files and get theirs size, configuration etc.Bitmap class supports following formats (*.jpg, *.png)
@class Bitmap
@module core
@example
    function loadImage()
    {
        // load bitmap file into memory
        this.bitmap = Bitmap.fromFile("dat://moscrif.jpg");
    }
    
    ...
    
    // draw bitmap inside onDrawFunction
    app.onDraw = function(sender, canvas)
    {
        canvas.drawBitmap(this.bitmap, 0, 0);
        // there are also other functions for bitmap drawing see canvas class
    }
*/
class Bitmap
{
    /**
    Reset all values in object, included loaded image, height and width.
    @method reset
    @chainable
    */
    function reset() { }

    /**
    Resizes bitmap according to required width and height.
    @method resize
    @chainable
    @param param1 {Integer} Required width of bitmap in pixels.
    @param param2 {Integer} Required height of bitmap in pixels.
    @return {Bitmap} Returns resized bitmap.
    @example
        // resize bitmap
        this._img = Bitmap.fromFile("app://img.png");
        this._img = this._img.resize(System.width, System.height);
        .......
        canvas.drawBitmap(this._img, 0, 0);
    */
    function resize(param1,param2) { }

    /**
    Function loads image from file. Supported types are:

    * .jpg - format uses lossy compression but does not support alpha channel. Frequently used for digital photography.
    * .png - bitmap format of image that employs lossless data compression. This format also support alpha channel.
    @method fromFile
    @chainable
    @param file {String}  File name of a picture to be opened.
    @return {Bitmap} Returns Bitmap object, with loaded picture.
    @example
        this._img = Bitmap.fromFile("app://img.png");
        ...
        canvas.drawBitmap(this._img, 0, 0);
    */
    function fromFile(file) { }

   /**
    Function creates bitmap object from screen. THe bitmap is same as a current image on he screen.
    @method fromScreen
    @chainable
    @return {Bitmap} Returns Bitmap object, with loaded picture.
    @example
        game.onPointerPressed = function()
        {
            // make screenshot
            this._bitmap = Bitmap.fromScreen();
            // save screen shot
            this._bitmap.toFile("data://screenshot.jpg");
        }
    */
    function fromScreen() { }

   /**
   Save bitmap to the image file. Supported types are:

    * .jpg - format uses lossy compression but does not support alpha channel. Frequently used for digital photography.
    * .png - bitmap format of image that employs lossless data compression. This format also support alpha channel.
    @method toFile
    @chainable
    @param file {String}  Name of a new image file.
    @return {Bitmap} Returns Bitmap object, with loaded picture.
    @example
        game.onPointerPressed = function()
        {
            // make screenshot
            this._bitmap = Bitmap.fromScreen();
            // save screen shot
            this._bitmap.toFile("data://screenshot.jpg");
        }
    */
    function toFile(file) { }

/**
    Loads image from byte array.
    @method fromBytes
    @param data {Bytes} Byte array.
    @return {Bitmap} Returns Bitmap object, with loaded picture.
    @example
        function loadImage ()
        {
            const HOST = "moscrif.com";
            const FILE = "/userfiles/moscrif2.png";

            // variable for downloaded image
            app.img = null;

            var request = new WebClient();

            request.open(HOST, 80, false, "");

            request.onReceived = function(sender) {
                // create bitmap from downloaded data
                app.img = Bitmap.fromBytes(this.data);
                app.invalidate();
            }

            request.getData(FILE);
        }
        ….
        app.onDraw = function(sender, canvas)
        {
            // draw image, if it has been downloaded
            if(app.img)
                canvas.drawBitmap(app.img, 0, 0);
        }
    */
    function fromBytes(data) { }

    /**
    Returns size of image file in pixels without loading an image.
    @method getSize
    @param file {String}
    @return {Multivalue} A pair of values. The first value is width and second is height in pixels.
    @example
        // get image dimensions before loading
        var (w, h) = Bitmap.getSize("app://img.png");
        // w: 640 h: 960
        console<<"w: "<<w<<" h: "<<h<<"\n";
    */
    function getSize(file) { }

    /**
    Width of loaded image.
    @property width
    @type {Integer}
    @readOnly
    */
    property width() { }

/**
    Height of loaded image.
    @property height
    @type {Integer}
    @readOnly
    */
    property height() { }

    /**
    Opaque
    @property opaque
    @type {Integer}
    @readOnly
    */
    property width() { }

/**
    Returns a number representating bitmap's configuration.
    With this function, a developer can get a number of bits per pixel and also a color model.

    * 0 - bitmap has not been configured
    * 1 - 1-bit per pixel, (0 is transparent, 1 is opaque)
    * 2 - 8-bits per pixel, with only alpha specified (0 is transparent, 0xFF is opaque)
    * 3 - 8-bits per pixel, using SkColorTable to specify the colors
    * 4 - 16-bits per pixel (RGB)
    * 5 - 16-bits per pixel (ARGB)
    * 6 - 32-bits per pixel (ARGB)
    @property config
    @type {Integer}
    @readOnly
    */
    property config() { }
}