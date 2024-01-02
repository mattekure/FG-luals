---@meta

---@module 'databasenode'
---@module 'shortcut'
---@module 'slotrecord'

---@class dragdata
---@field type string Drag object type.
---@field icon string Icon associated with this drag object.
---@field description string Description associated with this drag object.
---@field dbref string|databasenode Database node identifier (or databasenode object) associated with this drag object.
---@field secret boolean Flag indicating whether drag data should be displayed local only when dropped on chat window.
---@field shortcuts shortcut[] able of shortcut records. Each shortcut record is a table containing class and recordname string fields. Any shortcut records associated with this drag object.
---@field slots slotrecord[] Table of slot records.

---Adds a single die value to the currently active slot. The existing dice in the slot will be preserved, and the new die appended to the slot die list.
---@param die string A string indicating the die asset to add
function addDie(die) end

---Adds a shortcut record to the list of shortcut records for this drag object.
---@param class string Windowclass to use when opening the shortcut link
---@param record string Database node identifier to use when opening the shortcut link
function addShortcut(class, record) end

---Create a new dragdata object as an inherited base data to the current top level data. Existing base data is destroyed.
---@param type? string The type applied to the created base dragdata
---@return dragdata # Returns a dragdata object representing the created base data object.
function createBaseData(type) end

---This function can be used to indicate that the current dragdata can not be dropped in the hot key bar. This is useful if the drag contains custom data, or other references that might not be valid across several sessions.
---@param state boolean A true value to indicate that hotkeying should be disabled, or false to enable hotkeying
function disableHotkeying(state) end

---Retrieves the Lua variable stored in the custom data value in the currently active slot in the top level data.
---@return any|nil # A variable stored in the active slot or nil if no custom variable has been set
function getCustomData() end

---Get the database node associated with the dragdata object.
---The database node returned will either be last value set by setDatabaseNode or setShortcutData (even though setShortcutData is set by slot).
---@return databasenode
function getDatabaseNode() end

---Retrieve the description for the entire drag item.
---@return string # The description string
function getDescription() end

---Get the list of dice in the currently active slot in the top level data, as well as additional data about the dice expression. The result is an integer indexed table of table values specifying the data related to the individual dice, as well as the “expr” key to contain the dice expression in which to apply the individual dice, as well as the “total” key to provide the current total (for dice that have been rolled already).
---@return table # An integer indexed table of data containing the die types, as well as expr/total keys and data.

---Returns the requested meta data attribute from the current slot.
---@param key string Meta data key
---@return string # Meta data value stored under the specified key
function getMetaData(key) end

---Returns a table of meta data attributes for the current slot.
---@return table # Table of meta data attributes, where the each key is the attribute name, and each value is the attribute value string for that key
function getMetaDataList() end

---Retrieves the number value in the currently active slot in the top level data.
---@return number # Returns the number value
function getNumberData() end

---Returns whether the secret flag is set on the drag object. By default, objects dragged onto the chat window will only show locally if this flag set.
---@return string # Returns true if the secret flag is set for this drag object; otherwise, returns false.
function getSecret() end

---Retrieves the shortcut value in the currently active slot in the top level data.
---@return windowclass|string|nil # The windowclass for the shortcut data or nil if no shortcut has been specified(string) OR The database node identifier for the shortcut target or nil if no shortcut has been specified
function getShortcutData() end

---Returns the list of shortcut records stored for this drag object.
---@return shortcut[] # Table of shortcut records, where each record is a table with 2 values stored under class and recordname keys.
function getShortcutList() end

---Get the currently active slot's index number.
---@return number # The current index slot in the range 1 .. (number of slots)
function getSlot() end

---Get the number of slots in the dragdata object
---@return number # The number of slots
function getSlotCount() end

---Returns the type attribute of the current slot.
---@return string # The string specifying the slot type
function getSlotType() end

---Retrieves the string value in the currently active slot in the top level data.
---@return string # Returns the string value
function getStringData() end

---Retrieves the value of the token prototype identifier string in the currently active slot in the top level data.
---@return any|nil # The string identifying the token prototype, or nil if no token is contained in the data
function getTokenData() end

---Returns the type string of the current top level data without performing checks on the inheritance chain.
---@return string # The string specifying the data type
function getType() end

---Check the inheritance chain for matching types to the type given as a parameter, starting at the current top level data. If a match is found, the match is set as the current top level data.
---@param type string The type being sought
---@return boolean # If a match is found, returns true, otherwise returns false.
function isType(type) end

---Increments the slot counter by one, if there are more slots available.
---@return boolean # Returns true if successful, or false if the operation fails because the current slot is the last one
function nextSlot() end

---Delete and reset all properties of the drag data item. The type field must be set after this operation for the object to represent valid drag contents.
function reset() end

---Set the highest level data as the current top level element.
function resetType() end

---This function can be used to indicate that GM rolls, which are by default hidden, should be displayed directly to clients. This function has no effect if the drag does not contain dice or does not cause a roll of the dice.
---@param state boolean A value of true to reveal the dice, or false to make a hidden roll
function revealDice(state) end

---Sets an arbitrary Lua variable into the custom data value in the currently active slot in the top level data.
---@param variable any Any variable
function setCustomData(variable) end

---Set the drag object to the attributes specified in the drag record.
---@param dragrecord table See dragdata description for details on the drag record structure.
function setData(dragrecord) end

---Set the a data node identifier path to be associated with the dragdata object.
---@param nodename string A database node identifier
function setDatabaseNode(nodename) end

---Set a database node to be associated with the dragdata object.
---@param node databasenode A databasenode object
function setDatabaseNode(node) end

---Set the string used as a label for the entire drag item. This data is shared between all slots in the object.
---@param description string The description string
function setDescription(description) end

---Set the dice data in the currently active slot in the top level data. See getDiceData for details of the dice data.  If the individual dice list is missing, then it will be rebuilt from the dice expression key (“expr”).  If the dice expression is missing, then it will be rebuilt as the addition of the individual dice.
---@param dicedata string[] An integer indexed table of strings listing the dice expression and total, as well as the details of the individual dice to be used in the dice expression.
function setDiceData(dielist) end

---Set the name of the icon resource used to render a graphic at the mouse cursor while the drag is taking place.
---@param icon string The name of an icon resource used for the icon
function setIcon(icon) end

---Sets the given meta data attribute in the current slot.
---@param key string Meta data key
---@param value string Meta data value
function setMetaData(key, value) end

---Sets the number value in the currently active slot in the top level data.
---@param value number The desired number value
function setNumberData(value) end

---Specifies whether the secret flag is set on the drag object. By default, objects dragged onto the chat window will only show locally if this flag set.
---@param value boolean Set to true to mark the drag data as secret; otherwise, set to false.
function setSecret(value) end

---Sets the shortcut value in the currently active slot in the top level data. The value consists of a windowclass name and an absolute database node identifier.
---@param class string The name of the windowclass resource used as a target of the shortcut
---@param recordname string The database node identifier used to construct the target data source
function setShortcutData(class, recordname) end

---Set the slot counter to the specified index. The index can be any positive integer, if it is smaller than the largest slot index, the number of slots is adjusted to match the given index.
---@param index number The new slot index
---@return boolean # Returns true if successful, or false if the operation fails because the specified slot index is less than 1
function setSlot(index) end

---Sets the type attribute of the current slot.
---@param type string The new value used as the type of the current slot
function setSlotType(type) end

---Sets the string value in the currently active slot in the top level data.
---@param value string The desired string value
function setStringData(value) end

---Sets the token prototype identifier string value in the currently active slot in the top level data. Only strings obtained through secondary token sources (such as other tokencontrol instances or token containers) should be used as the parameter.
---@param prototypename string The string identifying the token prototype to add to the data
function setTokenData(prototypename) end

---Set the type string.
---@param type string The new value used as the type of the object
function setType(type) end
