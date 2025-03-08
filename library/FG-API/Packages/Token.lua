---@meta
---@module dragdata
---@module tokeninstance
---@module databasenode
---@module imagecontrol


---@class Token
Token = {}

---Returns the distance (in game system units) between two tokens. If the tokens specified are not in the same image value (i.e. map), then zero will be returned.
---@param token tokeninstance A tokeninstance object on the current image control.
---@param token tokeninstance A tokeninstance object on the current image control.
---@return number #The distance between the two specified tokens in game system units
function Token.getDistanceBetween(token, token)
end

---Gets the tokeninstance object referred to by the container node name and ID parameters.
---@param containernodename string The database path identifier for the container node
---@param containerid number The ID of the token within the container node
---2return tokeninstance|nil #A tokeninstance object representing the requested token, or nil if the container does not exist or the ID is not valid.
function Token.getToken(containernodename, containerid)
end

---Returns a list of all tokens within the given game system unit distance from the specified token.
---@param token tokeninstance A tokeninstance object on the current image control.
---@param distance number Distance in game units to check
---@return tokeninstance[] #A table with integer index values containing references to tokeninstance objects contained in the control
function Token.getTokensWithinDistance(token, distance)
end

---This handler is called when a token is added to a token container.
---@param target tokeninstance The tokeninstance triggering the event.
function Token.onAdd(target)
end

---This handler is called when a mouse button is pressed down on a token.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number Returns a numerical value indicating the button pressed (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param image imagecontrol The imagecontrol object in which the token was clicked.
function Token.onClickDown(target, button, image)
end

---This handler is called when a mouse button is released on a token.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number Returns a numerical value indicating the button released (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param image imagecontrol The imagecontrol object in which the token was clicked.
function Token.onClickRelease(target, button, image)
end

---This handler is called after a token is dragged from one container to another.
---@param target tokeninstance The tokeninstance triggering the event
---@param oldcontainernode databasenode A databasenode object representing the underlying database node of the old container, or nil if the no previous container found.
---@param oldcontainerid number The old ID of the token within the old container.
function Token.onContainerChanged(target, oldcontainernode, oldcontainerid)
end

---This handler is called just before a token is deleted.
---@param target tokeninstance The tokeninstance triggering the event.
function Token.onDelete(target)
end

---This handler is called when the left mouse button is double-clicked on a token.
---@param target tokeninstance The tokeninstance triggering the event
---@param image imagecontrol The imagecontrol object in which the token was clicked.
function Token.onDoubleClick(target, image)
end

---This function is called when the mouse is moved after having been pressed down on the token. The event is called repeatedly as the user adjusts the mouse position.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the token
---@param y number The Y coordinate relative to the top left corner of the token
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil #This function should return `true` if it handled the event and the processing of the event should be stopped. A value of `false` indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of `nil` (or the absence of a `return` statement) indicates that the framework should continue handling the event normally.
function Token.onDrag(target, button, x, y, dragdata)
end

---This function is called when the mouse is released at the end of a drag operation that started on the token. The dragdata object is first passed to the Token handler in the receiving control, which can set properties in the dragdata object that notify this control of the events.
---@param target tokeninstance The tokeninstance triggering the event
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function Token.onDragEnd(target, dragdata)
end

---This function is called when the mouse is moved after having been pressed down on the token. The event is called once.
---If a customized drag and drop transfer is done, the dragdata parameter should be used to make the required changes.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the token
---@param y The Y coordinate relative to the top left corner of the token
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil #This function should return `true` if it handled the event and the processing of the event should be stopped. A value of `false` indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of `nil` (or the absence of a `return` statement) indicates that the framework should continue handling the event normally.
function Token.onDragStart(target, button, x, y, dragdata)
end

---This handler is called when a drag and drop operation finishes on a token. The dragdata parameter should be used to access the dragged information.
---To transfer information back to the object where the drag originated, the same dragdata object is passed to the onDragEnd function in that object.
---@param target tokeninstance The tokeninstance triggering the event
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function Token.onDrop(target, dragdata)
end

---This handler is called when the hover state of a token changes.
---@param target tokeninstance The tokeninstance triggering the event
---@param state boolean `true` if the mouse is entering the area, `false` if leaving
function Token.onHover(target, state)
end

---This handler is called when the mouse cursor is moved while over a token.
---@param target tokeninstance The tokeninstance triggering the event
---@param x number The X coordinate of the mouse pointer in pixels relative to the top left corner of the token
---@param y number The Y coordinate of the mouse pointer in pixels relative to the top left corner of the token
function Token.onHoverUpdate(target, x, y)
end

---This handler is called after a token is moved.
---@param target tokeninstance The tokeninstance triggering the event
function Token.onMove(target)
end

---This handler is called when the targeting information for a token is changed.
---@param source tokeninstance The tokeninstance that is the targeting source.
---@param target tokeninstance The tokeninstance that is the targeting target.
---@param targeted boolean Whether the target token is currently targeted by the source token.
function Token.onTargetUpdate(source, target, targeted)
end

---This handler is called when the mouse wheel is spun over a token.
---@param target tokeninstance The tokeninstance triggering the event
---@param notches number This number specifies the number of notches the wheel was spun. Typically one notch corresponds to one adjustment step on the wheel.
function Token.onWheel(target, notches)
end
