/**

Represents any object and types.
@class g2TiledMap
@module graphics
*/
class g2TiledMap
{

    /**
    Constructor.
    @method this
    */
    function this() { }


    /**
    Number of columns in the g2TiledMap grid.
    @property columns
    @type {Integer}
    @readOnly
    */
    property columns() { }

    /**
    Number of rows in the g2TiledMap grid.
    @property rows
    @type {Integer}
    @readOnly
    */
    property rows() { }

    /**
    Number of rows in the g2TiledMap grid.
    @method doDraw
    @param canvas {Canvas} Canvas.
    @param viewX {Integer} View X.
    @param viewY {Integer} View Y.
    @param viewWidth {Integer} View Width.
    @param viewHeight {Integer} View Height.
    @return {g2TiledMap}
    */
    function doDraw(canvas,viewX,viewY,viewWidth,viewHeight) { }

    /**
    Change the static tile set.
    @method setStaticTileSet
    @param image {Image} The Image to use for creating the static tile set.
    @param tileWidth {Integer} The width in pixels of a single tile.
    @param tileHeight {Integer} The height in pixels of a single tile.
    */
    function setStaticTileSet(image ,tileWidth ,tileHeight) { }


    /**
    Change the static tile set.
    @method setStaticTileSet
    @param image {Image} The Image to use for creating the static tile set.
    @param tileWidth {Integer} The width in pixels of a single tile.
    @param tileHeight {Integer} The height in pixels of a single tile
    */
    function setStaticTileSet(image ,tileWidth ,tileHeight) { }

    /**
    Fills a region cells with the specific tile.
    @method dfillCellsoDraw
    @param col {Image} The column of top-left cell in the region.
    @param row {Integer} The row of top-left cell in the region.
    @param numCols {Integer} The number of columns in the region.
    @param numRows {Integer} The number of rows in the region.
    @param index {Integer} The Index of the tile to place in all cells in the specified region.
    */
    function fillCells(col,row,numCols,numRows,index) { }

    /**
    Sets the contents of a cell.
    @method setCell
    @param col {Integer} The The column of cell to set.
    @param row {Integer} The row of cell to set.
    @param index {Integer} The index of tile to place in cell.
    */
    function setCell(col,row,index) { }

    /**
    Gets the contents of a cell. Gets the index of the static or animated tile currently displayed in a cell. The returned index will be 0 if the cell is empty.
    @method getCell
    @param col {Integer} The column of cell to check.
    @param row {Integer} The row of cell to check.
    */
    function getCell(col,row) { }

    /**
    Creates a new animated tile and returns the index that refers to the new animated tile. It is initially associated with the specified tile index (either a static tile or 0). The indices for animated tiles are always negative. The first animated tile shall have the index -1, the second, -2, etc.
    @method createAnimatedTile
    @param staticTileIndex {Integer} The index of the associated tile (must be 0 or a valid static tile index).
    @return {Integer}
    */
    function createAnimatedTile(staticTileIndex) { }

    /**
    Gets the tile referenced by an animated tile.
    @method getAnimatedTile
    @param animatedTileIndex {Integer} The index of the animated tile.
    @return {Integer}  Returns the tile index currently associated with the animated tile.
    */
    function getAnimatedTile(animatedTileIndex) { }

    /**
    Associates an animated tile with the specified static tile.
    @method setAnimatedTile
    @param animatedTileIndex {Integer}  The index of the animated tile.
    @param staticTileIndex {Integer} The index of the associated tile (must be 0 or a valid static tile index).
    */
    function setAnimatedTile(animatedTileIndex, staticTileIndex) { }

    /**
    @method beginUpdate
    */
    function beginUpdate() { }

    /**
    @method endUpdate
    */
    function endUpdate() { }

}