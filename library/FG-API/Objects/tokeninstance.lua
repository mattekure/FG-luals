---@meta tokeninstance

---This object represents a token instance placed in a token container. Token instances are based on token prototypes that define the bitmap used for the token. A token container can contain several instances of one prototype.
---By default, token instances can be manipulated by the host and all clients. The token container may be locked, in which case vectors may be drawn out from the token by the clients to indicate movement requests. Tokens can also be toggled non-modifiable which disallows client interaction altogether.
---Tokens flagged targetable can be clicked by players to indicate they are targeting the corresponding token. Several clients can target one token.
---Token instances do not have direct scripting function definitions, but use a handler based notification scheme. Care should be taken to unregister handlers whenever the objects containing the handler script are destroyed.

--- @class tokeninstance

---Add an underlay to the token. Underlays are colored areas drawn based on the grid squares below the token. The size of underlays is given in squares and is measured as a radius from the token centre to the grid square centres. Thus, an equal value as the underlay size will result in a different sized overlay area based on whether the token is situated at a grid square centre or a grid line intersection.
---Only scripts running on the session host can set this property.
---@param size number The size of the underlay in grid squares
---@param color string The color of the underlay, in the form '#aarrggbb' where 'aa' represents the transparency (alpha) of the desired color. If alpha is zero or not defined, FF is assumed.
---@param mode? string If this string contains the substring "gmonly", this overlay will be displayed on the host only. If the string contains the substring "hover", the overlay will only be drawn when the mouse cursor is hovering over the token. The flags can be combined.
function addUnderlay(size, color, mode) end

---Clears the targets for this token.
function clearTargets() end

---Destroy the token instance, removing it from the token container.
function delete() end

---Returns a reference to a databasenode object representing the data for the image containing the token instance. The node name and the token id number (see getId) can be used together to identify the specific token in a saved session.
---@return databasenode # The databasenode representing the image containing the token
function getContainerNode() end

---Returns the height value associated with the token instance.
---@return number # The height for this token instance
function getHeight() end

---Returns the id number of the token in the image database node representing the image containing the token instance. See getContainerNode for more information.
---@return number # The identifier number for this token instance
function getId() end

---Returns the size of the bitmap used for this token instance.
---@return number # The width on the image.
---@return number # The height on the image.
function getImageSize() end

---Return a string containing the name of the token instance, as displayed in the tool tip drawn when the mouse cursor hovers over the token.
---@return string # The name of the token instance
function getName() end

---Returns the orientation value of the token.
---@return number # Returns the current orientation
function getOrientation() end

---Return the coordinates the token is located at, relative to the origin of the token container.
---@return number # The horizontal position of the token
---@return number # The vertical position of the token
function getPosition() end

---Gets the string identifying the token prototype used for this token instance.
---@return string # Returns the string representing the prototype
function getPrototype() end

---Returns the player edit status of this token
---@return boolean # Returns true if the token can be interacted with by the player clients, false otherwise
function getPublicEdit() end

---Return the size scaling value used for rendering the token in the image control. Any token specific scaling is applied in addition to any global token scaling value in the image control.
---@return number # The size scale factor used for rendering the token
function getScale() end

---Gets the set of targets for this token.
---@return number[] Table of token IDs (number) identifying the tokens targeted.
function getTargets() end

---Determine if the token is currently active. See setActive for more information.
---@return boolean # Returns true if the token is active, false otherwise.
function isActive() end

---Determines if the token is targeted by one or more identities.
---@return boolean # If true, at least one token is targeting this token. Otherwise, returns false.
function isTargeted() end

---Determines if this token is targeted by the specified token.
---@param tokenid number|tokeninstance Token ID to check for targeting info. (or tokeninstance object)
---@return boolean # If true, the specified token is targeting this token. Otherwise, returns false.
function isTargetedBy(tokenid) end

---Get the visibility status of the token instance.
---@return boolean|nil # Returns current visibility setting of token (true = always visible, false = always invisible, nil = mask/LoS-based visibility)
function isVisible() end

---This handler is called when the target token is activated.
---@param target tokeninstance The tokeninstance triggering the event
function onActivation(target) end

---This function is called when a mouse button is pressed down on the token. If this function is not defined or returns false, the onClickRelease function is not called.
---###The token interface for click events is different than other objects in that a handler must be registered to intercept click events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param button number Returns a numerical value indicating the button pressed (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param image imagecontrol The imagecontrol object in which the token was clicked.
function onClickDown(target, button, image) end

---This function is called when a mouse button is released, if the cursor was not moved after the click down event. If the control did not process the click down event, this function is not called.
---###The token interface for click events is different than other objects in that a handler must be registered to intercept click events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param button number Returns a numerical value indicating the button pressed (1 = left, 2 = middle, 4 = button 4, 5 = button 5). Right button is used for radial menus.
---@param image imagecontrol The imagecontrol object in which the token was clicked.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onClickRelease(target, button, image) end

---This handler is called after the target token is added to a new token container after being removed from a its previous token container.
---@param target tokeninstance The tokeninstance triggering the event
function onContainerChanged(target) end

---This handler is called just before the target token is removed from its token container and added to a new token container.
---@param target tokeninstance The tokeninstance triggering the event
function onContainerChanging(target) end

---This handler is called when the target token is deleted.
---@param target tokeninstance The tokeninstance triggering the event
function onDelete(target) end

---This function is called when the left mouse button is pressed down twice in succession on the token. Note that if this function is present and returns nil, the onClickDown function is called as well.
---###The token interface for click events is different than other objects in that a handler must be registered to intercept click events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param image imagecontrol The imagecontrol object in which the token was clicked.
---@return boolean # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDoubleClick(target, image) end

---This function is called when the mouse is moved after having been pressed down on the token. The event is called repeatedly as the user adjusts the mouse position.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the token
---@param y number The Y coordinate relative to the top left corner of the token
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function onDrag(target, button, x, y, dragdata) end

---This function is called when the mouse is released at the end of a drag operation that started on the token. The dragdata object is first passed to the onDrop handler in the receiving control, which can set properties in the dragdata object that notify this control of the events.
---@param target tokeninstance The tokeninstance triggering the event
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function onDragEnd(target, dragdata) end

---This function is called when the mouse is moved after having been pressed down on the token. The event is called once.
---If a customized drag and drop transfer is done, the dragdata parameter should be used to make the required changes.
---@param target tokeninstance The tokeninstance triggering the event
---@param button number 1 if the event was caused by the left mouse button, 2 if it was caused by the middle (wheel) button.
---@param x number The X coordinate relative to the top left corner of the token
---@param y number The Y coordinate relative to the top left corner of the token
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDragStart(target, button, x, y, dragdata) end

---This function is called when a drag and drop operation finishes on the token. The dragdata parameter should be used to access the dragged information.
---To transfer information back to the control where the drag originated, the same dragdata object is passed to the onDragEnd function in that control.
---###The token interface for drop events is different than other objects in that a handler must be registered to intercept drop events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
---@return boolean # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onDrop(target, dragdata) end

---This handler is called when the hover state of this token changes.
---@param target tokeninstance The tokeninstance triggering the event
---@param state boolean true if the mouse is entering the area, false if leaving
function onHover(target, state) end

---This handler is called when the mouse cursor is moved while over this token.
---@param target tokeninstance The tokeninstance triggering the event
---@param x number The X coordinate of the mouse pointer in pixels relative to the top left corner of the token
---@param y number The Y coordinate of the mouse pointer in pixels relative to the top left corner of the token
function onHoverUpdate(target, x, y) end

---This function is called when a user defined item is selected in the token's radial menu.
---###The token interface for menus is different than other objects in that a handler must be registered to intercept menu events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param ... number ... A variable amount of number parameters, depending on the menu hierarchy depth of the selected item. A first level menu item will contain one number, identifying the slot it occupies on the menu. A second level item will contain two numbers, with the first specifying the submenu position, and the second the position of the item in the submenu. See registerMenuItem for more information.
function onMenuSelection(target, ...) end

---This handler is called when the target token is moved.
---@param target tokeninstance The tokeninstance triggering the event
function onMove(target) end

---This handler is called when the target token scaling is changed.
---@param target tokeninstance The tokeninstance triggering the event
---@param scale number The new scaling value for this token relative to the global scaling for the token container.
function onScaleChanged(target, scale) end

---This handler is called when target information for this token changes.
---@param source tokeninstance The tokeninstance triggering the event
---@param target tokeninstance The tokeninstance of the target token.
---@param status boolean Current target status. True if targeted; false if not.
function onTargetUpdate(source, target, status) end

---This handler is called when this token is targeted or untargeted by another token.
---@param source tokeninstance The tokeninstance of the source token.
---@param target tokeninstance The tokeninstance triggering the event
---@param status boolean Current target status. True if targeted; false if not.
function onTargetedUpdate(source, target, status) end

---This function is called when the mouse wheel is spun over the token.
---###The token interface for wheel events is different than other objects in that a handler must be registered to intercept click events.###
---@param target tokeninstance The tokeninstance triggering the event
---@param notches number This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
---@return boolean|nil # This function should return true if it handled the event and the processing of the event should be stopped. A value of false indicates that the default framework functionality for the this particular control should not be executed, but the processing should continue for the element below this control, if any. A return value of nil (or the absence of a return statement) indicates that the framework should continue handling the event normally.
function onWheel(target, notches) end

---This function registers a new user defined menu item. If the user selects the item, the script is notified of this through the onMenuSelection handler, if registered.
---The menu item is defined by specifying the bitmap and label to use, as well as the position of the item on the menu. The position is given as a number value. To define entries in submenus, use multiple number values, with the first being the position value of the outermost submenu, and the last being the position of the actual menu item in the innermost submenu.
---Trying to redefine an existing menu item will fail.
---###The token interface for menus is different than other objects in that a handler must be registered to intercept menu events.###
---@param label string A string to be used as the label of the menu item
---@param icon string The name of an icon resource to use as the bitmap for the menu item
---@param ... number A list of numbers specifying the menu item position as a number between 1 and 8, with one being the top slot, and the progression of numbers proceeding in a clockwise direction.
function registerMenuItem(label, icon, ...) end

---Removes all underlays from the token.
function removeAllUnderlays() end

---This function unregisters all user defined menu items. It does not affect menu entries defined by the application engine.
function resetMenuItems() end

---Determines whether the token is currently marked active. Active markers can be used by the host to indicate a single token in a container, e.g. to represent it is currently active in a turn sequence.
---@param state boolean Returns true if this token is presently marked active, false otherwise.
function setActive(state) end

---Sets the height value associated with the token instance.
---@param height number A number containing the value to use as the token instance height.
function setHeight(height) end

---Sets the name string used as the tooltip for the token.
---@param name string A string containing the value to use as the token name and tooltip
function setName(name) end

---Sets the orientation, i.e. rotation state, of the token.
---@param orientation number The desired new rotation value
function setOrientation(orientation) end

---Sets token rotation mode for this token, which overrides imagecontrol setting. (physical token rotation or facing arrows)
---###Available on host only.###
---@param mode string Desired orientation mode (rotation or facing).
function setOrientationMode(mode) end

---Sets the coordinates the token is located at in the token container.
---@param x number The horizontal position the token is placed at
---@param y number The vertical position the token is placed at
function setPosition(x, y) end

---Flags the token player edit status. Tokens with the player edit status turned off can't be interacted with by player clients.
---Only scripts running on the session host can set this property.
---@param state boolean A value of false to disable player client interactions with the token, or true to allow them.
function setPublicEdit(state) end

---Sets the size scaling factor used in rendering the token instance in the image control. A token specific scaling value is applied in addition to any global token scaling used in the image control.
---@param scale number The requested non-negative scaling factor
function setScale(scale) end

---Sets the target state of this token as a target of the specified token.
---@param state boolean A value of true to set the target, or false to reset it.
---@param targeter string|tokeninstance Token ID to check for targeting info. (or tokeninstance object)
function setTarget(state, targeter) end

---Set the client visibility for the token. A hidden token will not be displayed to the clients, and will be drawn with 50% transparency on the host.
---@param state boolean Set to true to show the token, false to hide it
function setVisible(state) end
