---@meta windowcontrol

---This is a base class for all elements that are contained in windows and panels. See windowclass and windowinstance for more information on the general properties of windows.
---Each window control, with a few exceptions, can have a name, a data source and a position in the window.
---The name is a simple string specified as an attribute in the element definition or passed to windowinstance.createControl. By default, it is also the name of the child node under the window instance data source that is used as the data source database node for the control itself. See databasecontrol for details on how controls are bound to the database.
---The position of the control can be specified as absolute coordinates relative to the window or relative coordinates that are relative to the other controls in the window. Absolute positioning uses an X and Y coordinate that can be relative to any side of the window and a width/height or a bottom-right corner offset to define the position. Relatively positioned controls are anchored to the sides of other controls in the window, using varying anchor combinations and offset values.

---@class windowcontrol: widgetcontainer

---Moves the control to the front in the processing order. It will be drawn last (on top) and will be the first to receive interface events at its position.
---###Reordering the controls will affect layout order. Anchored controls may behave erratically if their parent is processed after them.###
function bringToFront() end

---Destroys the control, removing it from the window.
function destroy() end

---This function returns the name of the control.
---@return string # Returns the name of the control as a string. Unnamed controls return the empty string "".
function getName() end

---Get the position of the top left corner of the control, relative to the parent window.
---@return number # The horizontal position of the control.
---@return number # The vertical position of the control.
function getPosition() end

---Gets the scrolling properties of the control. Scroll properties include the total size of the control's scrollable area, the visible area, and the position in the scrollable area where the visible area is located. Support for horizontal scrolling is only present in some control types.
---@return number # The width of the entire scrollable area.
---@return number # The position of the left edge of the visible portion of the total area, relative to the left edge of the entire scrollable area.
---@return number # The height of the entire scrollable area.
---@return number # The position of the top edge of the visible portion of the total area, relative to the top edge of the entire scrollable area.
---@return number # The height of the visible area.
function getScrollState() end

---Get the current size of the control. The size is calculated based on the anchoring of the control and the dimensions of the containing window.
---@return number # The width of the control.
---@return number # The height of the control.
function getSize() end

---Checks if the control is flagged as read only.
---@param direction boolean A value of true specifies the "next" tab target value to be returned, and a value of false indicates the "previous" tab target value to be returned.
---@return string # Returns the name of the control that is currently set as the tab target for the specified direction. If the result is an empty string, then no tab target defined.
function getTabTarget(direction) end

---Returns whether the control contains text or is empty.
---Certain control types will always return false. (genericcontrol, imagecontrol, assetviewcontrol, chatwindow, scrollercontrol, scrollbarcontrol, portraitselectioncontrol)
---@return boolean # Whether the control is empty
function isEmpty() end

---This function indicates whether the control is enabled.
---Disabled controls do not receive interface events and can't be manipulated by the user. Enabled controls receive interface events but might not be visible (see setVisible).
---@return boolean # Returns true if the control is enabled, false if it is hidden.
function isEnabled() end

---Checks if the control is flagged as read only.
---@return boolean # Returns true if the control has the read only flag set, false otherwise
function isReadOnly() end

---This function indicates whether the control is visible in the window.
---Invisible controls are not drawn, have zero size in calculations involving them as parents in relative control placement and do not receive interface events. Visible controls are drawn and affect relative control placement calculations but might not receive interface events if they are disabled (see isEnabled).
---@return boolean # Returns true if the control is visible, false if it is hidden.
function isVisible() end

---This function is called when a mouse button is pressed down on the control. If this function is not defined or returns false, the onClickRelease function is not called.
---@param button number Returns a numerical value indicating the button pressed (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onClickDown(button, x, y) end

---This function is called when a mouse button is released, if the cursor was not moved after the button press. If the control did not process the button pressed event, this function is not called.
---@param button number Returns a numerical value indicating the button pressed (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onClickRelease(button, x, y) end

---If present, this function is called when the control is destroyed, before the onClose event of the parent window is called.
function onClose() end

---This function is called when the left mouse button is pressed down twice in succession on the control. Note that if this function is present and returns nil, the onClickDown function is called as well.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@return boolean # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDoubleClick(x, y) end

---This function is called when the mouse is moved after having been pressed down on the control. The event is called repeatedly as the user adjusts the mouse position. As of v2.8, the onDrag event will not be called for the initial drag event. See onDragStart to capture the initial drag event.
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDrag(button, x, y, dragdata) end

---This function is called when the mouse is released at the end of a drag operation that started on the control. The dragdata object is first passed to the onDrop handler in the receiving control, which can set properties in the dragdata object that notify this control of the events.
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function onDragEnd(dragdata) end

---This function is called when the mouse is moved after having been pressed down on the control. The event is called once.
---If a customized drag and drop transfer is done, the dragdata parameter should be used to make the required changes.
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDragStart(button, x, y, dragdata) end

---This function is called when a drag and drop operation finishes on the control. The dragdata parameter should be used to access the dragged information.
---To transfer information back to the control where the drag originated, the same dragdata object is passed to the onDragEnd function in that control.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDrop(x, y, dragdata) end

---If present, this function is called just after the first layout of the control's parent window is performed.
function onFirstLayout() end

---This function is called when the mouse enters or leaves the area of the control.
---@param state boolean true if the mouse is entering the area, false if leaving
function onHover(state) end

---This function is called when the mouse cursor is moved while over the control.
---@param x number The X coordinate of the mouse pointer relative to the top left corner of the control
---@param y number The Y coordinate of the mouse pointer relative to the top left corner of the control
function onHoverUpdate(x, y) end

---If present, this function is called when the control is created, after the window and child controls are initialized by the framework, before the onInit event of the parent window is called.
function onInit() end

---This function is called when a user defined item is selected in the control's radial menu.
---@param ... number A variable amount of number parameters, depending on the menu hierarchy depth of the selected item. A first level menu item will contain one number, identifying the slot it occupies on the menu. A second level item will contain two numbers, with the first specifying the submenu position, and the second the position of the item in the submenu. See registerMenuItem for more information.
function onMenuSelection(...) end

---Called whenever the scroll position of the control changes. This handler will not be called for imagecontrols.
function onScroll() end

---If present, this function is called when the visibility of a control is changed after initialization. (currently by setVisible function)
function onVisibilityChanged() end

---This function is called when the mouse wheel is spun over the control.
---@param notches number This number specifies the number of notches the wheel was spun. Typically one notch corresponds to one adjustment step on the wheel.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onWheel(notches) end

---Called whenever the zoom factor of the control changes. This handler will only be called for imagecontrols.
function onZoom() end

---This function registers a new user defined menu item for the control radial menu. If the user selects the item, the script is notified of this through the onMenuSelection event.
---The menu item is defined by specifying the bitmap and label to use, as well as the position of the item on the menu. The position is given as a number value. To define entries in submenus, use multiple number values, with the first being the position value of the outermost submenu, and the last being the position of the actual menu item in the innermost submenu.
---Trying to redefine an existing menu item will fail.
---@param label string A string to be used as the label of the menu item
---@param icon string The name of an icon resource to use as the bitmap for the menu item
---@param ... number A list of numbers specifying the menu item position as a number between 1 and 8, with one being the top slot, and the progression of numbers proceeding in a clockwise direction.
function registerMenuItem(label, icon, ...) end

---Resets (clears) an anchor point for one of the edges (left, top, right or bottom) of the control.
---Anchored controls should either be anchored at opposite sides (left and right, or top and bottom) or have one anchor and a width or height directly specified.
---To set the anchor, see setAnchor.
---@param target string The name of the anchor being reset. This string should be one of "left", "top", "right" or "bottom".
function resetAnchor(target) end

---This function unregisters all user defined menu items. It does not affect menu entries defined by the application engine.
function resetMenuItems() end

---Moves the control to the back in the processing order. It will be drawn first (behind others) and will be the last to receive interface events at its position.
---###Reordering the controls will affect layout order. Anchored controls may behave erratically if their parent is processed after them.###
function sendToBack() end

---Sets an anchor point for one of the edges (left, top, right or bottom) of the control.
---Anchored controls should either be anchored at opposite sides (left and right, or top and bottom) or have one anchor and a width or height directly specified (see setAnchoredWidth and setAnchoredHeight). Controls can anchor to any edge on the target control, and specify an offset that is applied to the point.
---To clear the anchor, see resetAnchor.
---@param target string The name of the anchor being set. This string should be one of "left", "top", "right" or "bottom".
---@param parent string The name of the control being anchored to. If this value is the empty string "", the control will be anchored to the window edges.
---@param parentanchor string Specifies the edge on the target control being anchored to. This string should be one of "left", "top", "right" or "bottom".
---@param relation? string This string should be one of "absolute", "relative" or "current". The default value is "absolute". When using a relation other than absolute, an anchor rectangle is internally tracked for the target control. Any "relative" controls anchoring to it will increase this rectangle to encompass that control as well. Controls using "current" will anchor to the anchor rectangle, but will not adjust it. Relative positioning can be used to lay out arrays of controls such as rows or columns.
---@param offset? number This number is directly added to the calculated position after the positioning calculations have been completed. A positive value will shift the control right or down, a negative value will shift it left or up.
function setAnchor(target, parent, parentanchor, relation, offset) end

---Sets the height of the control relative to an anchored top or bottom edge. If the height is set, only one of the mentioned anchors should be used.
---@param height string The height set for the control.
function setAnchoredHeight(height) end

---Sets the width of the control relative to an anchored left or right edge. If the width is set, only one of the mentioned anchors should be used.
---@param width string The width set for the control.
function setAnchoredWidth(width) end

---Set the color to be used to fill the background of the control before drawing the contents. If no backcolor specified (i.e. nil), then no fill will be done (i.e. transparent).
---@param color string The color specified as a HTML compatible string representing an RGB color with an alpha (transparency) value. The format of the string is 'aarrggbb', and each component is presented as a hexadecimal value from 00 to FF. If alpha is zero or not defined, FF is assumed.
function setBackColor(color) end

---This function can be used to toggle the control enabled and disabled.
---@param state boolean A value of true marks the control enabled, false marks it disabled.
function setEnabled(state) end

---Set the bitmap frame drawn in the control area. The area used by the frame can be adjusted per edge by using the margin offset values. A negative value shifts the bitmap frame edge towards the center of the control, and a positive value shifts it outward.
---@param name string The name of the bitmap frame resource to be used for the frame.
---@param leftmargin? number The margin offset for the left edge.
---@param topmargin? number The margin offset for the top edge.
---@param rightmargin? number The margin offset for the right edge.
---@param bottommargin? number The margin offset for the bottom edge.
function setFrame(name, leftmargin, topmargin, rightmargin, bottommargin) end

---This function can be used to set a specific cursor to be used when the mouse hovers over the control.
---@param name string A string naming the cursor to be used. The available values for the parameter are "arrow" and "hand".
function setHoverCursor(name) end

---Sets the read only flag of the control.
---@param state boolean A value of true sets the read only flag and a value of false disables it
function setReadOnly(state) end

---Sets the location of the visible area of the control, relative to its entire scrollable surface. If the placement is outside valid boundaries, it will be adjusted to be the closest valid position. Calling this function will cause the onScroll handler to be called.
---@param x number The location of the desired position of the left edge of the visible area.
---@param y number The location of the desired position of the top edge of the visible area.
function setScrollPosition(x, y) end

---Set the bitmap frame drawn in the control area for special states. The area used by the frame can be adjusted per edge by using the margin offset values. A negative value shifts the bitmap frame edge towards the center of the control, and a positive value shifts it outward.
---The state frame is drawn instead of the regular frame (set by setFrame) if the condition for the state is fulfilled and the frame for that state has been set.
---When the user is performing a drag of a type that the control is registered to accept (see dragdata), the frame of type "drophilight" is used.
---When the mouse is hovering over the control, the frame of type "hover" is used. This setting overrides the "drophilight" frame.
---When the mouse is hovering over the control and the user is performing a drag of a type that the control is registered to accept, the frame of the type "drophover" is used. This setting overrides both the "drophilight" and the "hover" frame.
---When the field has the text editing focs, then the "keyedit" frame is used also.
---@param state string A string identifying the state for which the frame is to be set. This value should be one of "hover", "drophilight", "drophover", or "keyedit".
---@param leftmargin? number The margin offset for the left edge.
---@param topmargin? number The margin offset for the top edge.
---@param rightmargin? number The margin offset for the right edge.
---@param bottommargin? number The margin offset for the bottom edge.
---@param nobaseframe? boolean If true, the normal base frame will not be drawn under this state frame.
---@param hidereadonly? boolean If true, the frame will not be drawn regardless of state when the control is set to read only.
function setStateFrame(state, name, leftmargin, topmargin, rightmargin, bottommargin, nobaseframe, hidereadonly) end

---Set the position and size of the control relative to the parent window. This function corresponds to the "bounds/rect" setting in the xml definition.
---If the X parameter is positive, the left side of the control is placed relative to the left side of the window. If it is negative, the left side is placed relative to the right side of the window.
---The Y parameter works similarly, relative to the top or bottom edge, respectively.
---A positive width value directly dictates the width of the control. A negative value will place the right edge of the control directly relative to the right edge of the window.
---The height parameter works similar to the width parameter, but is relative to either the Y coordinate of the control or the bottom of the window.
---@param x number The X coordinate of the control
---@param y number The Y coordinate of the control
---@param width number The width of the control
---@param height number The height of the control
function setStaticBounds(x, y, width, height) end

---Sets the next/previous tab target values of the control. If set to nil or an empty string, then the tab targeting will assume Z-order.
---@param direction boolean A value of true specifies that the "next" tab target value is being set, and a value of false indicates the "previous" tab target value is being set.
---@param name string The name of the control to set as the tab target
function setTabTarget(direction, name) end

---This function sets the string that is displayed on the control tooltip.
---@param name string A string to be displayed on the tooltip.
function setTooltipText(name) end

---This function can be used to toggle the control visible and invisible.
---@param state boolean A value of true marks the control visible, false marks it hidden.
function setVisible(state) end
