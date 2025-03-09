---@meta widget

---The widget object defines functions generic to all widget types. There are no standalone instances of this type, this is a virtual base class.
---@class widget

---Bring this widget to the front in the container drawing order. The widget will be drawn last (on top). Note that if the container is located below another interface element, this function will not bring the widget on top of that element.
function bringToFront() end

---Destroy the widget, removing it from the parent container.
---###Using the widget reference for operations after a call to destroy may produce invalid operation. Any reference to the widget object should be invalidated (set to nil).###
function destroy() end

---Get the on screen dimensions of the widget. The actual values and their calculation may vary by widget type.
---@return number width
---@return number height
function getSize() end

---This function can be used to check if the widget has been toggled hidden.
---@return boolean # Returns true if the widget is visible, false otherwise
function isVisible() end

---Send this widget to the back in the container drawing order. The widget will be drawn first (under others). Note that if the container is located above another interface element, this finction will not cause the widget to be drawn under either that element or the widget container itself.
function sendToBack() end

---This function can be used to toggle the widget enabled state. This determines whether mouse events interact with the widget.
---@param state boolean A value of true for enabled, false for disabled.
function setEnabled(state) end

---This function sets a bitmap frame to be used when rendering the widget on the screen. The size of the frame will equal the size of the widget, with optional margins given as parameters. A positive value for the margins will shift the edge of the frame away from the widget center, with a negative value shifting it towards the center of the widget.
---@param name string The name of the bitmap frame resource to be used
---@param leftmargin? number The left margin offset, in pixels
---@param topmargin? number The top margin offset, in pixels
---@param rightmargin? number The right margin offset, in pixels
---@param bottommargin? number The bottom margin offset, in pixels
function setFrame(name, leftmargin, topmargin, rightmargin, bottommargin) end

---Sets the position of the widget relative to the parent container. The widget can be placed relative to any corner of the container or its center point. The widget will be centered both horizontally and vertically on the anchor point given.
---@param anchor string Defines the point on the parent container the widget will be centered on. This string should be a combination of the substrings "left", "top", "right" and "bottom". If either the vertical or horizontal dimension is omitted, the widget will be centered on the container in that direction. To place the widget relative to the center of the container, use the empty string "" or "center".
---@param x number Horizontal offset from the anchor point in pixels. Positive values indicate a shift to the right, negative values to the right.
---@param y number Vertical offset from the anchor point in pixels. Positive values indicate a shift down, negative values down.
function setPosition(anchor, x, y) end

---Sets the position of the widget relative to the parent container. This function can be used to place widgets radially around the center point of the container. The widget will be centered both horizontally and vertically on the anchor point given.
---@param r number The radial distance from the center of the container to the center of the widget, in pixels.
---@param a number The angle of widget placement from the center of the container. A value of zero is directly up, and the angle is measured clockwise from that location. The value should be given as a number from 0 to 100, with the value 100 specifying a complete rotation.
function setRadialPosition(r, a) end

---Set the widget visible or hidden.
---@param state boolean If true, the widget will be visible. If false, the widget will be hidden
function setVisible(state) end
