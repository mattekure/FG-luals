---@meta

---@class Debug
Debug = {}

---Translate any parameters into a string, and send a message to the defined chat window. If a chatwindow control does not exist yet, then the message will be sent to the Fantasy Grounds console.
---@param ... any A list of constants and variables to output to the chat window.
function Debug.chat(...)
end

---Translate any parameters into a string, and send a message to the Fantasy Grounds console.
---@param ... any A list of constants and variables to output to the console.
function Debug.console(...)
end
