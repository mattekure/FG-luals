--- @meta

--- @class Comm
local Comm = {}

--- add a new entry to the chat window
--- @param messagedata table
function Comm.addChatMessage(messagedata)
end

--- This function will clear the chat window
function Comm.clearChat()
end

--- Add a new entry to the chat window and deliver to others
--- @param messagedata table
--- @param recipients? string|table A string or table
function Comm.deliverChatMessage(messagedata, recipients)
end
