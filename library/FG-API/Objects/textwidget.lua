---@meta textwidget

---@module 'widget'

---A text widget is a specialized version of widget.
---Text widgets contain a text string, rendered in the given font. The size of the widget will vary based on the text content, and can be limited to a maximum width.
---@class textwidget: widget

---Retrieve the text string displayed in the widget.
---@return string # Returns the text displayed in the widget
function getText() end

---Sets the color used when rendering the contents of the control. This setting overrides the color defined in the font used. To restore the use of font resource color, specify nil as the parameter value.
---The specified parameter is a color value in a HTML-style string representation, in the format "#AARRGGBB". The components are hexadecimal digits specifying the value of the alpha (transparency), red, green and blue channels, respectively, in the range 0 .. 255. If alpha is zero or not defined, FF is assumed.
---@param color string|nil The color to be used, or nil to reset the setting. See above for details on the string format.
function setColor(color) end

---Sets the font resource used for rendering the text in the widget.
---@param name string The name of the font resource
function setFont(name) end

---Set the maximum width of the widget. If the maximum width is set and the text contained in the widget is longer than allowed, an ellipsis ('...') will be placed at the end of the displayed string.
---@param width number The maximum width of the widget in pixels. To disable the maximum width setting, set the value to 0.
function setMaxWidth(width) end

---Set the text string displayed in the widget.
---@param text string Text displayed in the widget
function setText(text) end
