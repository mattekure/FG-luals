---@meta Comm

---@module 'messagedata'

---@class Comm
Comm = {}

---Add a new entry to the chat window. The message is not delivered to other users, and chatwindow.onReceiveMessage event is not fired.
---@param messagedata table A table containing information about the message.
function Comm.addChatMessage(messagedata) end

--- This function will clear the chat window.
function Comm.clearChat() end

---Add a new entry to the chat window, and also delivers to others.
---If client, then the message will always be distributed to all connected clients (regardless of recipients parameter).
---If host, then the message will be distributed to the users specified in the recipients parameter, or to all clients if recipients not specified.
---@param messagedata table A table containing information about the message. See the Comm package for details.
---@param recipients? string|string[] A string (or integer indexed table of strings) containing the user name(s) of the desired recipient(s)
function Comm.deliverChatMessage(messagedata, recipients) end

---Deliver a custom LUA table object to all connected clients.
---If client, then the OOB message will always be distributed to all connected clients (regardless of recipients parameter).
---If host, then the OOB message will be distributed to the users specified in the recipients parameter, or to all clients if recipients not specified.
---@param tabledata table A LUA table object.
---@param recipients? string|string[] A string (or integer indexed table of strings) containing the user name(s) of the desired recipient(s)
function Comm.deliverOOBMessage(tabledata, recipients) end

---Any registered callback handlers will be called when an OOB message is received, and the custom LUA table object containing the message will be passed as an input parameter.
---@param tabledata table A LUA table object.
function Comm.onReceiveOOBMessage(tabledata) end

---This function registers a handler function that will be called if the specified slash command is requested.
---The handler function should have the following signature: `[function name]``(sCommands, sParams)`.
---* The first parameter will be the slash command entered, in case the same callback function is used for multiple commands.
---* The second parameter will be the parameters passed to the slash command, exactly as typed by the user.
---@param command string The slash command to implement.
---@param callback function The LUA function that will be called when the specified slash command is requested.
---@param helptext string|string[] The string to append to the command in the default help output to indicate usage.  If a table is used, it is assumed to be a numerically-indexed table of strings, and multiple entries will be added to the default help output.
function Comm.registerSlashHandler(command, callback, helptext) end

---This function sets the chat mood text for all speech (if host) or for the active identity (if client).
---@param message string The text message to display as mood text.
function Comm.setChatMood(message) end

---This function is used to trigger a roll of the dice without direct UI actions. Technically, the roll is performed by creating a dragdata object and triggering the action of the dice.
---@param dragtype string The type used for the dragdata object. A value of "dice" performs a normal die roll.
---@param dice table An integer indexed list of die types to add to the roll, similar in function to dragdata.dicelist.
---@param modifier number The modifier applied to the roll (see dragdata.setNumberData).
---@param description string The description string applied to the roll (see dragdata.setDescription).
---@param customdata? any A custom value useful for e.g. storing special information about the roll required when the results are displayed (see dragdata.setCustomData).
function Comm.throwDice(dragtype, dice, modifier, description, customdata) end

---An alternate version of the function used to trigger a roll of the dice without direct UI actions. Technically, the roll is performed by creating a dragdata object and triggering the action of the dice.
---@param data table See the dragdata object for a description of the table (same as dragdata.setData)
function Comm.throwDice(data) end

---This function is used to initiate a voting block in the chat window.
---@param message string The text message to display with the voting box.
function Comm.vote(message) end
