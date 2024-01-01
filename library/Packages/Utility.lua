---@meta

---@class Utility
Utility = {}

---Converts the specified XML string into an internal Lua table format for XML.
---###NOTE: The internal table format is not specifically documented. Use Debug package to output examples to learn the forma
---@param xmlstring string A string representation of an XML document
---@return table An internal Lua table format for XML
function Utility.decodeXML(xmlstring)
end

---Calculates the total value of the dice data table passed to this function. See dragdata.getDiceData for details of the dice data. If the individual dice list is missing, then it will be rebuilt from the dice expression key (“expr”). If the dice expression is missing, then it will be rebuilt as the addition of the individual dice.
---@ param dicedata string[] An integer indexed table of strings listing the dice expression and total, as well as the details of the individual dice to be used in the dice expression.
---@return number #The calculated total of the dice data table, per the dice expression and dice values
function Utility.getDiceTotal(dicedata)
end

---Converts the internal Lua table format for XML into an XML string.
---###The internal table format is not specifically documented. Use Debug package to output examples to learn the format.
---@param xmltable table An internal Lua table format for XML
---@return string #An XML string representation of an XML document.
function Utility.encodeXML(xmltable)
end

---Decodes CSV data
---@param sContents string
---@return table #Contents of CSV formatted as a LUA table
function Utility.decodeCSV(sContents)
end

---Encodes CSV data
---@param tContents table A Lua table of strings
---@return string #CSV contents
function Utility.encodeCSV(tContents)
end

---Decode JSON into a LUA table
---@param sContents string JSON string
---@return table #A LUA table representation of the JSON data
function Utility.decodeJSON(sContents)
end

---Encode a LUA table into JSON
---@param tContents table A Lua table of strings
---@return string #JSON contents
function Utility.encodeJSON(tContents)
end
