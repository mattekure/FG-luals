--- @meta

---This object acts as the base interface for text elements, and is never directly instanced. This interface provides functions for manipulating the string content as well as editing options such as cursor and selection positions.
---The interface contains utility events that can be used to simulate list or table like functionality. To support this, the system should either contain controls in a list or grid formation, or a windowlist with text controls.
--- @class textbasecontrol: windowcontrol

---Retrieve the position of the cursor in the control. This value varies from 1 (before the first character) to n+1 where n is the length of the content string in characters. The value n+1 indicates that the cursor is positioned after the last character.
---@return number # The cursor position in the range 1 to (string length)+1
function getCursorPosition() end

---Retrieves the name of the font resource used when rendering the contents of the control.
---@return string # The name of a font resource
function getFont() end

---Retrieve the position of the selection marker in the control. Setting the selection marker to a different position from the cursor will cause the section of the string in the control between the selection marker and the cursor to be hilighted as selected.
---This value varies from 1 (before the first character) to n+1 where n is the length of the content string in characters. The value n+1 indicates that the marker is positioned after the last character.
---@return number # The selection marker position in the range 1 to (string length)+1
function getSelectionPosition() end

---Retrieve the text in the control.
---@return string # The text value in the control.
function getValue() end

---Checks if the control has the keyboard focus.
---@return boolean # Returns true if the control has focus and false if it does not.
function hasFocus() end

---If present, this function is executed whenever the user types a character into the text field.
---@param keycode number The key code for the typed character. The Lua function string.char can be used to convert the value into a string.
function onChar(keycode) end

---If present, this function is executed whenever the user presses the delete key at the end of the text content when editing the text. This method can be used to support list like operation for controls, e.g. implying that the entry following the one being edited should be merged at the end of the current entry or deleted if it is empty.
function onDeleteDown() end

---If present, this function is executed whenever the user presses the backspace key at the beginning of the text content when editing the text. This method can be used to support list like operation for controls, e.g. implying that the entry being edited should be merged at the end of the preceding entry or deleted if it is empty.
function onDeleteUp() end

---If present, this function is executed whenever the user presses enter when editing the text. This method can be used to support behaviors allowing users to enter multiple records of data using the keyboard.
---@return boolean # If the event returns true, no further processing is done by the framework. If the return value is false, the framework processes the message after the script function (finishing the edit operation or creating a new line based on the multi line spacing property).
function onEnter() end

---Is called when the control gains the keyboard focus.
function onGainFocus() end

---Is called when the control loses the keyboard focus.
function onLoseFocus() end

---If present, this function is executed whenever the user presses the down arrow key on the last line of the text content when editing the text. This method can be used to support list or table like operation for controls.
function onNavigateDown() end

---If present, this function is executed whenever the user presses the left arrow key at the beginning of the text content when editing the text. This method can be used to support list or table like operation for controls.
function onNavigateLeft() end

---If present, this function is executed whenever the user presses the right arrow key at the end of the text content when editing the text. This method can be used to support list or table like operation for controls.
function onNavigateRight() end

---If present, this function is executed whenever the user presses the up arrow key on the first line of the text content when editing the text. This method can be used to support list or table like operation for controls.
function onNavigateUp() end

---If present, this function is executed whenever the user presses the tab key when editing the text. This method can be used to support list or table like operation for controls. If the shift key is pressed as well, the parameter will be false
---@param forward boolean If the tab key is pressed without the shift key being depressed, the value is true, indicating a forward tab operation. If the shift key is depressed, the value is false indicating a backward tab operation.
function onTab() end

---Sets the color used when rendering the contents of the control. This setting overrides the color defined in the font used. To restore the use of font resource color, specify nil as the parameter value.
---The specified parameter is a color value in a HTML-style string representation, in the format "#AARRGGBB". The components are hexadecimal digits specifying the value of the alpha (transparency), red, green and blue channels, respectively, in the range 0 .. 255. If alpha is zero or not defined, FF is assumed.
---@param color string|nil The color to be used, or nil to reset the setting. See above for details on the string format.
function setColor(color) end

---Set the position of the cursor in the control. The valid values for this setting range from 1 (before the first character) to n+1 where n is the length of the content string in characters. Setting the value outside this range will set the cursor to the beginning of the string. The value n+1 indicates that the cursor should be positioned after the last character.
---@param index number The desired cursor position in the range 1 to (string length)+1
function setCursorPosition(index) end

---This function requests the framework to either set or reset the keyboard focus to this control.
---@param state? boolean A value of true sets the focus to this control, a false value resets the focus. When the parameter is omitted (synonymous to passing a nil value), the value is treated as true.
function setFocus(state) end

---Sets the name of the font resource used to render the text in the control.
---@param fontname string The name of a font resource
function setFont(fontname) end

---Sets the line flag.
---@param state boolean A value of true indicates the entire control should be underlined. A value of false disables control underlining.
---@param offset number Specifies the distance from the font baseline to set the control underline
function setLine(state, offset) end

---Set the position of the selection marker in the control. Setting the selection marker to a different position from the cursor will cause the section of the string in the control between the selection marker and the cursor to be hilighted as selected.
---The valid values for this setting range from 0 (before the first character) to n+1 where n is the length of the content string in characters.
---Setting the value outside this range will set the selection marker to the cursor position, resetting the selection. The value n+1 indicates that the marker is positioned after the last character. The value zero indicates that the selection should be cleared.
---@param index number The desired selection marker position in the range 0 to (string length) + 1
function setSelectionPosition(index) end

---Sets the underline flag.
---@param state boolean A value of true indicates the text should be underlined. A value of false disables text underlining.
---@param offset number Specifies the distance from the font baseline to set the text underline
function setUnderline(state, offset) end

---Set the text in the control.
---@param value string The new value for the text content
function setValue(value) end
