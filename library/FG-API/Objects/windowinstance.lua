---@meta windowinstance

---Objects of type windowinstance are individual representations of windows created based on a windowclass.
---Window instances contain controls, as defined in the sheetdata section of the windowclass definition, or dynamically constructed using the createControl function.
---Window contents, i.e. the data present in the data field controls, is determined by the instance's association with the database tree. A window instance can be tied to a particular database tree node or it can be unbound (in which case getDatabaseNode returns nil). The node the window is bound to is called the window data source. The controls in the window will get their data from a node under the data source (see databasecontrol for details). The controls in an unbound window are unbound by default.
---A window instance is identified by two parameters: the window class name and the data source node. These parameters identify a window instance uniquely, i.e. a second window with the same parameters cannot exist. Thus, only one unbound instance of a particular window class can ever exist at one time.

---@class windowinstance

---This function brings the windowinstance to the top of the Fantasy Grounds window stack.
function bringToFront() end

---Closes the window.
function close() end

---Creates a new control into the window dynamically at run time. The created control will use default settings. It is possible to use this command to create controls defined by a template.
---The onInit function of the control is executed when it is created.
---@param type string The type is defined as the name of a control as specified in the window class XML definition (e.g. "numbercontrol") or as the name of a template to be used for the creation of this control.
---@param name string The name of the control. If the control is a databasecontrol and the window has a data source, it will be bound to the corresponding node in the database.
---@param source? string If specified, use the specified database path as the control's database source, instead of using window data source and control name.
function createControl(type, name, source) end

---Returns the name of the windowclass resource used to construct the window.
---@return string # The name of the windowclass this window instance represents.
function getClass() end

---Get the currently instantiated window control objects in a list. The actual object types return depend on the basic FG windowcontrol-based objects defined. (Ex: stringfield, numbercontrol, ...)
---@return table # An integer indexed table containing references to the windowcontrol-based objects in the window.
function getControls() end

---This function will return a reference to a databasenode object representing the data source database node for this window.
---Note: Developers should prefer the getValue function for the individual controls when possible, in order to minimize memory usage for database script objects.
---@return databasenode|nil # A reference to the root data source node for this window. If the window is unbound, returns nil.
function getDatabaseNode() end

---Returns the name of the bitmap frame used to render the background area of the window.
---@return string # Returns the name of the bitmap frame used to render the background area of the window.
function getFrame() end

---Returns the current positional lock state of the window instance. Only applies to windowinstance objects defined within panel tags.
---@return boolean # Lock state of the panel windowinstance. If windowinstance is not embedded within a panel, then false.
function getLockState() end

---Returns the position of the window on the screen calculated from the top left corner of the application window.
---###Calling this function on a dynamically sized window used as a subwindow or list item may have unpredictable results.###
---@return number # The X coordinate of the window, distance from the left edge in pixels.
---@return number # The Y coordinate of the window, distance from the top edge in pixels.
function getPosition() end

---Returns the current size of the window in pixels, as calculated from the outer edge of the window frame.
---@return number # The width of the window in pixels.
---@return number # The height of the window in pixels.
function getSize() end

---Returns the current tooltip text assigned to the window instance.
---@return string # Tooltip text.
function getTooltipText() end

---Returns an integer indexed list of string values containing the usernames of the connected clients that currently have the window open.
---@return string[] # An integer indexed table of string values containing the usernames.
function getViewers() end

---This function can be used to check if the window is minimized.
---@return boolean # true if the window is minimized, false otherwise.
function isMinimized() end

---This function can be used to check if the window has been shared since it was opened, or if it was opened as a result of a remote sharing operation.
---@return boolean # true if the window has been shared, false otherwise.
function isShared() end

---Notifies the window that some of its contents have been changed and a minimized window should be hilighted.
---Most built-in controls call this method automatically, but this may be useful for some custom control types and data handling schemes.
function notifyUpdate() end

---If present, this function will be called when the window is closing, after the onClose functions of child controls have been called.
function onClose() end

---This function is called when a drag and drop operation finishes on the control. The dragdata parameter should be used to access the dragged information.
---To transfer information back to the control where the drag originated, the same dragdata object is passed to the onDragEnd function in that control.
---@param x number The X coordinate relative to the top left corner of the control
---@param y number The Y coordinate relative to the top left corner of the control
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function onDrop(x, y, dragdata) end

---If present, this function is called just after the first layout of this window is performed.
function onFirstLayout() end

---This function is called when the mouse enters or leaves the area of the window.
---@param state boolean true if the mouse is entering the area, false if leaving
function onHover(state) end

---This function is called when the mouse cursor is moved while over the window.
---@param x number The X coordinate of the mouse pointer in pixels relative to the top left corner of the window
---@param y number The Y coordinate of the mouse pointer in pixels relative to the top left corner of the window
function onHoverUpdate(x, y) end

---If present, this function is called when the window instance is created, after the onInit functions of child controls have been called, but before the window is first displayed.
function onInit() end

---This function is called when the position lock state of this windowinstance changes. Only applies to windowinstance objects defined within panel tags.
function onLockStateChanged() end

---If present, this function is called if the lock state of a the window instance within a panel definition is changed. (Only panels can be locked in place.)
function onLockStateChanged() end

---This function is called when a user defined item is selected in the window's radial menu.
---@param ... number A variable amount of number parameters, depending on the menu hierarchy depth of the selected item. A first level menu item will contain one number, identifying the slot it occupies on the menu. A second level item will contain two numbers, with the first specifying the submenu position, and the second the position of the item in the submenu. See registerMenuItem for more information.
function onMenuSelection(...) end

---This handler is triggered whenever the position of the window is changed.
---@param source windowinstance The windowinstance causing the event.
function onMove(source) end

---This handler is triggered whenever the size of a window is changed. It can be used to implement specific content positioning based on window size.
---###Repositioning controls may trigger a new layout pass for the entire window. Using this function carelessly may cause significant performance hits.###
---@param source windowinstance The windowinstance causing the event.
function onSizeChanged(source) end

---If present, this function is called if the window instance is contained in a subwindow. This will be called after onInit
function onSubwindowInstantiated() end

---This handler is triggered whenever the viewer list for the window is updated. See getViewers for more information.
function onViewersChanged() end

---This function registers a new user defined menu item for the window radial menu. If the user selects the item, the script is notified of this through the onMenuSelection event.
---The menu item is defined by specifying the bitmap and label to use, as well as the position of the item on the menu. The position is given as a number value. To define entries in submenus, use multiple number values, with the first being the position value of the outermost submenu, and the last being the position of the actual menu item in the innermost submenu.
---Trying to redefine an existing menu item will fail.
---@param label string A string to be used as the label of the menu item
---@param icon string The name of an icon resource to use as the bitmap for the menu item...A list of numbers specifying the menu item position as a number between 1 and 8, with one being the top slot, and the progression of numbers proceeding in a clockwise direction.
function registerMenuItem(label, icon, ...) end

---This function unregisters all user defined menu items. It does not affect menu entries defined by the application engine.
function resetMenuItems() end

---Set the color to be used to fill the background of the window before drawing the contents. If no backcolor specified (i.e. nil), then no fill will be done (i.e. transparent).
---@param color string The color specified as a HTML compatible string representing an RGB color with an alpha (transparency) value. The format of the string is 'aarrggbb', and each component is presented as a hexadecimal value from 00 to FF. If alpha is zero or not defined, FF is assumed.
function setBackColor(color) end

---Sets whether the given panel window instance is enabled to accept mouse and keyboard events. Only applies to windowinstance objects defined within panel tags.
---@param enable boolean Desired event enabling state.
function setEnabled(enable) end

---Sets the window background to the bitmap frame resource identified by the given name.
---@param name string The name of the bitmap frame resource used as the new window frame.
function setFrame(name) end

---Sets the positional lock state of the window instance. Only applies to windowinstance objects defined within panel tags.
---@param lock boolean Desired lock state for panel windowinstance.
function setLockState(lock) end

---Adjusts the position of a window on the screen.
---###A window moved out of the application window area may be unrecoverable by the user. Keep in mind that the application window size may vary by user.###
---###Calling this function on a dynamically sized window used as a subwindow or list item may have unpredictable results.###
---@param x number The new X coordinate position of the window.
---@param y number The new Y coordinate position of the window.
---@param relative boolean If true and x/y coordinates are negative, then they will be applied as negative offsets to tabletop width/height, respectively.
function setPosition(x, y, relative) end

---Resizes the window to the given dimensions. All controls will be laid out according to the new size. This function will override the operation of an automatic resize performed for shared windows whose size is controlled by the host.
---###Calling this function on a dynamically sized window used as a subwindow or list item may have unpredictable results.###
---@param width number The new width of the window in pixels.
---@param height number The new height of the window in pixels.
function setSize(width, height) end

---Sets the tooltip text assigned to the window instance. Once assigned, any fields or controls specified as the tooltip source previously will be ignored.
---@param tooltip string Desired tooltip text.
function setTooltipText(tooltip) end

---Share the window. If called as a host, parameters can be used to control the recipient list. As a client, shares the window to all, provided the window has the player control flag set.
---@param ... string If called as a host, one or more strings can be passed as parameters to specify the list of users to receive the window.
function share(...) end
