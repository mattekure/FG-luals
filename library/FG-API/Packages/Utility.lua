---@meta Utility

---@class Utility
Utility = {}

---Converts the specified string into lower case.
---@param string string A string to edit
---@return string # Returns the lower case version of the string
function Utility.convertStringToLower(string) end

---Converts the specified string into upper case.
---@param string string A string to edit
---@return string # Returns the upper case version of the string
function Utility.convertStringToUpper(string) end

---Converts the specified CSV string into an internal Lua table format for XML.
----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmlstring string A string representation of an CSV document
---@return table # An internal Lua table format for XML
function Utility.decodeCSV(xmlstring) end

---Converts the specified JSON string into an internal Lua table format for XML.  If the parsing of the JSON string fails for any reason, a nil value will be returned.
----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmlstring string A string representation of an JSON document
---@return table # An internal Lua table format for XML
function Utility.decodeJSON(xmlstring) end

---Converts a URL-encoded string into a string without URL encoding.
---@param urlstring string A string containing an encoded URL
---@return string # A version of string parameter with URL encoding removed
function Utility.decodeURL(urlstring) end

---Converts the specified XML string into an internal Lua table format for XML.
----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmlstring string A string representation of an XML document
---@return table # An internal Lua table format for XML
function Utility.decodeXML(xmlstring) end

---Converts the internal Lua table format for CSV into an CSV string.
-----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
--@param xmltable table An internal Lua table format for CSV
---@return string # A string representation of a CSV document.
function Utility.encodeCSV(xmltable) end

---Converts the internal Lua table format for JSON into a JSON string. If the encoding of the JSON fails for any reason, a nil value will be returned.
----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmltable table An internal Lua table format for JSON
---@return string # A string representation of a JSON document.
function Utility.encodeJSON(xmltable) end

---Converts a standard string into a URL-encoded string.
---@param string string A string containing a URL that needs to be encoded
---@return string # A version of string parameter with URL encoding
function Utility.encodeURL(string) end

---Converts the internal Lua table format for XML into an XML string.
----NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmltable table An internal Lua table format for XML
---@return string # An XML string representation of an XML document.
function Utility.encodeXML(xmltable) end

---Calculates the total value of the dice data table passed to this function. See dragdata.getDiceData for details of the dice data. If the individual dice list is missing, then it will be rebuilt from the dice expression key (“expr”). If the dice expression is missing, then it will be rebuilt as the addition of the individual dice.
---@ param dicedata string[] An integer indexed table of strings listing the dice expression and total, as well as the details of the individual dice to be used in the dice expression.
---@return number # The calculated total of the dice data table, per the dice expression and dice values
function Utility.getDiceTotal(dicedata) end
