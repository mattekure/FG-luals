---@meta Input

---@module 'dragdata'

---@class File
Input = {}

---Retrieves the data on the current drag and drop operation.
---@return dragdata|nil # A reference to a dragdata object, or nil if no drag is underway
function Input.getDragData() end

---Get the state of the specified mouse button.
---@param button number This value specifies the mouse button whose state is being queried and should be 1 for the left mouse button, 2 for the middle button and 3 for the right button
---@return boolean # Returns `true` if the button is pressed and `false` if it is not
function Input.getMouseButtonState(button) end

---Retrieve the current mouse pointer coordinates relative to the top left corner of the application window area.
---@return number X # The X coordinate of the mouse cursor
---@return number Y # The Y coordinate of the mouse cursor
function Input.getMousePosition() end

---Check the state of the alt key.
---@return boolean # Returns `true` if the key is down, `false` otherwise
function Input.isAltPressed() end

---Check the state of the control key.
---@return boolean # Returns `true` if the key is down, `false` otherwise
function Input.isControlPressed() end

---Check the state of the shift key.
---@return boolean # Returns `true` if the key is down, `false` otherwise
function Input.isShiftPressed() end

---Called when the alt key is pressed down or released.
---@return boolean # A value of `true` if the key was pressed, or `false` if it was released
function Input.onAlt(pressed) end

---Called when the control key is pressed down or released.
---@return boolean # A value of true if the key was pressed, or false if it was released
function Input.onControl(pressed) end

---Called when the shift key is pressed down or released.
---@return boolean # A value of `true` if the key was pressed, or `false` if it was released
function Input.onShift(pressed) end
