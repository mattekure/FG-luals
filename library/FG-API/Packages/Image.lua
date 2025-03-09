---@meta
---@module tokeninstance
---@module databasenode

---@class Image
Image = {}

---Attempts to add a layer on the specified image value database node. Only scripts running on the session host can run this API.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---Valid layer types are: image, paint (default), text
---• Image layer type fields: name (string), asset (string), x (number), y (number), w (number), h (number), color (string), angle (number), invisible (boolean), gmonly (boolean), locked (boolean)
---• Note: w and h attributes are specified in grid units.
---• Paint layer type fields: name (string)
---• Text layer type fields: text (string), font (string), fontsize (number)
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param layertype string The desired layer type to add\
---@param layerdata table A table containing string-based keys to denote layer type specific parameters (see above).
---@return number|nil # Returns the layer ID of the created layer, or nil if no layer created.
function Image.addLayer(dbnodeORdbpath, layertype, layerdata) end

---Attempts to add a layer on the specified image value database node. Only scripts running on the session host can run this API.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---• Paint stamp data fields: asset (string), x (number), y (number), w (number), h (number), color (string), angle (number)
---Note: w and h attributes are specified in grid units.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param layerid number The desired layer to edit.function Image.addLayerPaintStamp() end
---@param stampdata table A table containing string-based keys to denote paint stamp specific parameters (see above).
---@return number|nil # Returns the layer ID of the created layer, or nil if no layer created.
function Image.addLayerPaintStamp(dbnodeORdbpath, layerid, stampdata) end

---Attempts to delete the specified layer ID on the specified image value database node. Only scripts running on the session host can run this API.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param layerid number The desired layer to delete
function Image.deleteLayer(dbnodeORdbpath, layerid) end

---Retrieves the distance base units of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number # Returns the distance base units.
function Image.getDistanceBaseUnits(dbnodeORdbpath) end

---Returns the distance (in game system units) between two tokens (and/or points) of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated. If a token parameter specifies a token not on the image value, then zero will be returned.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param tokena tokeninstance|number|table A tokeninstance object, OR the ID of a tokeninstance, OR a Lua table of the form { 1 = #, 2 = # } or { x = #, y = # }, indicating a point on the image.
---@param tokenb tokeninstance|number|table A tokeninstance object, OR the ID of a tokeninstance, OR a Lua table of the form { 1 = #, 2 = # } or { x = #, y = # }, indicating a point on the image.
---@return number Returns the distance between the two specified tokens and/or points in game system units.
function Image.getDistanceBetween(dbnodeORdbpath, tokena, tokenb) end

---Retrieves the distance diagonal multiplier of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number # Returns the distance diag multiplier of the specified image value. [>0 for grid-based multiple; 0 for raw calculation]
function Image.getDistanceDiagMult(dbnodeORdbpath) end

---Retrieves the distance display suffix of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string
---@return string # Returns the distance display suffix of the specified image value.
function Image.getDistanceSuffix(dbnodeORdbpath) end

---Returns the offset of the first grid square in the top left corner on the specified image value database node. The offsets will be different from zero as a result of the grid not being perfectly aligned with the top left corner of the image itself. The values will vary from zero to -((grid size) - 1).
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number # Returns the horizontal offset of the grid
---@return number # Returns the vertical offset of the grid
function Image.getGridOffset(dbnodeORdbpath) end

---Returns the size of a grid square on the specified image value database node. The grid is rectangular, i.e. the height and width of the squares is the same.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number # Returns the size of a grid square.
function Image.getGridSize(dbnodeORdbpath) end

---Returns whether grid snapping is enabled on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number|nil # Returns 1 if enabled, 0 if disabled, or nil if undefined.
function Image.getGridSnap(dbnodeORdbpath) end

---Returns the type of grid currently active on the specified image value database node. Valid types are "square", "hexcolumn" (hexes stacked vertically) and "hexrow" (hexes stacked horizontally).
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return string Returns the grid type.
function Image.getGridType(dbnodeORdbpath) end

---Attempts to get the layer ID matching the specified name on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried
---@param name string The desired layer name to query
---@return number|nil # Returns the layer ID of the desired layer, or nil if no matching layer found.
function Image.getLayerByName(dbnodeORdbpath, name) end

---Returns the overall size of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return number # Returns the image width.
---@return number # Returns the image height.
function Image.getSize(dbnodeORdbpath) end

---Returns whether token movement has been locked for clients on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return boolean # Returns the current lock state.
function Image.getTokenLockState(dbnodeORdbpath) end

---Retrieve a list of all tokens on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return table # A table with integer index values containing references to tokeninstance objects.
function Image.getTokens(dbnodeORdbpath) end

---Returns a list of all tokens within the given game system unit distance from the specified token or point on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated. If a token parameter specifies a token not on the image value, then an empty list will be returned.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param token tokeninstance|number|table A tokeninstance object, OR the ID of a tokeninstance, OR a Lua table of the form { 1 = #, 2 = # } or { x = #, y = # }, indicating a point on the image.
---@param distance number The range in game system units that should be considered for distance calculations.
---@return table # A table with integer index values containing references to tokeninstance objects.
function Image.getTokensWithinDistance(dbnodeORdbpath, token, distance) end

---Returns whether the grid is visible on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return boolean # Returns true if the grid is visible, or false if not.
function Image.hasGrid(dbnodeORdbpath) end

---Returns whether there are any tokens placed on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@return boolean # Returns true if there is at least one token placed, or false if not.
function Image.hasTokens(dbnodeORdbpath) end

---Returns whether the specified image value database node is an image value database node.
---@param dbnodeORdbpath databasenode|string  Specifies the database node whose state is being queried.
---@return boolean # Returns true if the database node exists and is an image value database node, or false if not.
function Image.isImage(dbnodeORdbpath) end

---Sets the distance base units of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param units number Specifies the desired units.
function Image.setDistanceBaseUnits(dbnodeORdbpath, units) end

---Sets the distance diagonal multiplier of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param multiplier number Specifies the desired multiplier. [>0 for grid-based multiple; 0 for raw calculation]
function Image.setDistanceDiagMult(dbnodeORdbpath, multiplier) end

---Sets the distance distance suffix of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param suffix number Specifies the desired suffix.
function Image.setDistanceSuffix(dbnodeORdbpath, suffix) end

---Sets the offset of the first grid square in the top left corner of the specified image value database node. The valid values for the offsets range from zero to -((grid size) - 1), any values not in this range will be converted to fit the interval.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param offsetx number The desired horizontal grid offset
---@param offsety number The desired vertical grid offset
function Image.setGridOffset(dbnodeORdbpath, offsetx, offsety) end

---Set the grid size of the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param size number The desired grid size
function Image.setGridSize(dbnodeORdbpath, size) end

---Sets whether grid snapping is enabled on the specified image value database node.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param snapenable number If 0 then disable grid snapping; otherwise, enable grid snapping.
function Image.setGridSnap(dbnodeORdbpath, snapenable) end

---Sets the grid type on the specified image value database node. Valid types are "square", "hexcolumn" (hexes stacked vertically) and "hexrow" (hexes stacked horizontally). The token orientation will be automatically set to 8 (square) or 12 (hex), based on the new grid type.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param type string The desired grid type
function Image.setGridType(dbnodeORdbpath, type) end

---Sets whether clients can move tokens on the specified image value database node. Only scripts running on the session host can set this property.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param state boolean The desired lock state
function Image.setTokenLockState(dbnodeORdbpath, state) end

---Returns the nearest snap point on the specified image value database node of the specified X and Y coordinate point, either vertex or center.
---If the specified database node does not exist or is not an image value database node, then an error is generated.
---@param dbnodeORdbpath databasenode|string Specifies the database node whose state is being queried.
---@param x number The X coordinate to snap
---@param y number The Y coordinate to snap
---@return number # Returns the snapped X coordinate.
---@return number # Returns the snapped Y coordinate.
function Image.snapToGrid(dbnodeORdbpath, x, y) end
