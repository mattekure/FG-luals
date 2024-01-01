---@meta messagedata

---@module 'shortcut'
---@module 'dieresult'

---@class messagedata
---@field text string The text content of the message
---@field sender string The string identifying the sender of the message
---@field mood string Set only if a mood is specified, containing the contents of the mood string
---@field font string Set only if the message uses a font different from the default setting, containing the font resource name
---@field icon string|string[] Set only if the message contains one or more icon resource names to be drawn at the beginning of the message.
---@field shortcuts shortcut[] Table of shortcut tables. Each shortcut table contains description, class and recordname string fields. Set only if the message should display one or more shortcut links to be drawn after the icons and before the text of the message.
---@field secret boolean Specifies whether this message is secret. (Only valid on host)
---@field type string The type of the message, as defined by the ruleset. (if any)
---@field mode string Set only if you want to specify a chat mode. (chat, system, ooc, emote, ...) The frames and fonts associated with each mode can be customized in the XML.
---@field dice dieresult[] Set only if you want dice results to be shown in the message. This parameter should be a table of die result objects. Each die result object is an array with a "type" and a "result" field. The "type" field is a string matching the die type defined in the XML ("d4", "d6", ...) and controls the die icon shown in the chat message. The "result" field is a number representing the die result to display on the die icon.
---@field diemodifier number Set only if you want a numerical modifier to be shown with dice results. This parameter is only used if dice is defined, even if it is empty.
---@field dicesecret boolean Same as secret field, kept for backward compatibility.
---@field dicedisplay number Set only if you want a dice summary to be shown with dice results. Valid dice summary values are 0 = none, 1 = total, 2 = negative, 3 = double, and 4 = half. This parameter is only used if dice is defined, even if it is empty.
