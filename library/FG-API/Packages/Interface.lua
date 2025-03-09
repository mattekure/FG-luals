---@meta Interface

---@module "windowcontrol"
---@module "windowinstance"
---@module "dragdata"

---@class Interface
Interface = {}

---Saves the specified image file into the current campaign's images folder.
---@param imagefile? string The full path of the image file to save
function Interface.addImageFile(imagefile) end

---Retrieves the current text value on the operating system clipboard.
---@return string # The text from the clipboard
function Interface.clipboardGetText() end

---Sets the text parameter as the text value on the operating system clipboard.
---@param text string The text to put on the clipboard
function Interface.clipboardSetText(text) end

---Cancel any file open or file save dialogs.
function Interface.dialogFileClose() end

---Displays a standard file system dialog for opening files. Dialog functions are asynchronous cross-platform dialogs and require a callback function.
---If a filter parameter is not defined or empty, then an XML file type will be added to the dialog filter.
---@param callback function The function to call when the dialog is accepted or cancelled.
---@param filter? table Specifies filter values to use in the file open dialog as a table of key/value pairs where the extension type is the key and the description is the value.
---@param directory? string Specifies the initial directory to display when opening this dialog, relative to the FG data directory.
---@param multiselect? boolean Defines whether multi-select is enabled for the open file dialog.
---@return string|table # Returns the file (or files if multi-select enabled) that the user selects.
function Interface.dialogFileOpen(callback, filter, directory, multiselect) end

---Displays a standard file system dialog for saving files. Dialog functions are asynchronous cross-platform dialogs and require a callback function.
---
---If a filter parameter is not defined or empty, then an XML file type will be added to the dialog filter.
---@param callback function The function to call when the dialog is accepted or cancelled.
---@param filter? table Specifies filter values to use in the file open dialog as a table of key/value pairs where the extension type is the key and the description is the value.
---@param directory? string Specifies the initial directory to display when opening this dialog, relative to the FG data directory.
---@return string # Returns the file that the user selects.
function Interface.dialogFileSave(callback, filter, directory) end

---Opens a simple operating system dialog to provide information to the user, or to request a simple positive/negative answer. Dialog functions are asynchronous cross-platform dialogs and require a callback function.
---@param callback function The function to call when the dialog is accepted or cancelled.
---@param dialogtext? string The text to display in the dialog
---@param title? string The text to display in the dialog title bar
---@param type? string The type of dialog to display. Valid values are (nil, "okcancel", "yesno", "yesnocancel").
---@return string # The button pressed in the dialog by the user. If `nil, then the dialog was closed without selecting a button. Otherwise, valid values are ("ok", "cancel", "yes", "no").
function Interface.dialogMessage(callback, dialogtext, title, type) end

---Cancel any message dialogs.
function Interface.dialogMessageClose() end

---Finds a top level window or panel by its windowclass and datasource. If the window is not found, it is not created.
---@param windowclass string The windowclass of the window to find
---@param datasource string The name of the datasource to use, see windowinstance for details
---@return windowinstance # A windowinstance to the window, or nil if the request failed or the window was not found.
function Interface.findWindow(windowclass, datasource) end

---Return a table with the names of all the registered die and customdie types.
---@return string[] # Table of strings, which correspond to the die resources defined via the die and customdie tags.
function Interface.getDice() end

---Returns a table of all the valid font resource names in the current ruleset.
---@return string[] # Table of strings, which correspond to the font resources defined via the font tag.
function Interface.getFonts() end

---Returns a table of all the valid frame resource names in the current ruleset.
---@return string[] # Table of strings, which correspond to the frame resources defined via the framedef tag.
function Interface.getFrames() end

---Returns a table of all the valid graphic assets (portraits, tokens, images) in the current session.
---@return table # Table of strings, which correspond to the asset resources currently available.
function Interface.getAssets() end

---Returns the size of the specified graphic asset (or 0,0 if not a valid asset key).
---@param assetkey string The name/key of the asset that you want to determine the size of
---@return number # The width of the asset (or 0 if not a valid asset)
---@return number # The height of the asset (or 0 if not a valid asset)
function Interface.getAssetSize(assetkey) end

---Returns a table of all the valid icon resource names in the current ruleset.
---@return string[] # Table of strings, which correspond to the icon resources defined via the icon tag.
function Interface.getIcons() end

---This function can be used to retrieve information about a particular extension. The returned table contains information in the following fields:
---*name = [lookup name]
---*major = [major version number]
---*minor = [major version number]
---@param lookupname string The “internal” name of the ruleset being targeted by the operation. (Same as file/folder name)
---@return table # A table containing information about the ruleset, see above for details
---@return table # A table with numerical indexes with each imported ruleset as an entry in the same format as the first return value
function Interface.getRulesetInfo(lookupname) end

---Return the text of the string resource identified by the parameter
---@param id string String resource ID
---@return string # The text stored in the string resource
function Interface.getString(id) end

---Return a table of all the currently open top-level windows (including panels), based on the optional classname parameter.  If the classname parameter is not provided or nil or empty string, then all open top-level windows are returned.
---@param classname? string The class name of windows desired to be returned.
---@return windowinstance[] # Table of windowinstance objects, which correspond to the top-level windows currently open.
function Interface.getWindows(classname) end

---Returns true or false based on whether font name belongs to a valid font resource in the current ruleset.
---@param fontname string The name of the font resource to check
---@return boolean # Whether the font resource exists.
function Interface.isFont(fontname) end

---Returns true or false based on whether frame name belongs to a valid frame resource in the current ruleset.
---@param framename string The name of the frame resource to check
---@return boolean # Whether the frame resource exists.
function Interface.isFrame(framename) end

---Returns whether Fantasy Grounds is running in full screen (maximized) mode or not.
---@return boolean # Whether Fantasy Grounds is running in full screen mode.
function Interface.isFullScreen() end

---Returns true or false based on whether icon name belongs to a valid icon resource in the current ruleset.
---@param iconname string The name of the icon resource to check
---@return boolean # Whether the icon resource exists.
function Interface.isIcon(iconname) end

---Returns true or false based on whether token name belongs to a valid token resource in the current ruleset.
---@param tokenname string The name of the token resource to check
---@return boolean # Whether the token resource exists.
function Interface.isToken(tokenname) end

---The functions registered on this handler will be called just before the virtual table is closed.
function Interface.onDesktopClose() end

---The functions registered on this handler will be called after the virtual table is initialized.
function Interface.onDesktopInit() end

---The functions registered on this handler will be called whenever a hot key bar slot is activated. This allows the processing of custom drag types and context specific special operation.
---@param dragdata dragdata The dragdata object representing the contents of the activated hot key bar slot.
function Interface.onHotkeyActivated(dragdata) end

---The functions registered on this handler will be called whenever an object is dropped on the hot key bar.
---@param dragdata dragdata A dragdata object containing the state of values connected to the mouse cursor as part of a drag and drop operation.
function Interface.onHotkeyDrop(dragdata) end

---The functions registered on this handler will be called whenever a top level window is about to be closed.
---@param window windowinstance
function Interface.onWindowClosed(window) end

---The functions registered on this handler will be called whenever a new top level window is created.
---@param window windowinstance A windowinstance object identifying the opened window
function Interface.onWindowOpened(window) end

---Opens an operating system file explorer instance to view the current campaign folder. If relative path parameter is defined, then open there instead.
---@param relative? string Relative path within current campaign folder
function Interface.openCampaignFolder(relative) end

---Opens an operating system file explorer instance to view the FG data folder. If relative path parameter is defined, then open there instead.
---@param relative? string Relative path within FG data folder
function Interface.openDataFolder(relative) end

---Opens the radial menu at the current mouse position. The radial menu is normally activated when right-clicking with the mouse.
function Interface.openRadialMenu() end

---Creates a top level window by a windowclass and a datasource. If a matching window already exists, it is returned. Otherwise, a new window is created.
---See `windowinstance` for more information on the parameter values.
---@param windowclass string The windowclass of the window to create
---@param datasource string The name of the datasource to use, see windowinstance for details
---@return windowinstance|nil # A windowinstance to the window, or nil if the request failed.
function Interface.openWindow(windowclass, datasource) end

---Opens a URL in the background.  If a callback function is defined, then the callback function will be called once the URL request completes successfully with the response from the URL returned as a parameter.
---@param url string The URL to request in the background
---@param callback? function If defined, the function called when the URL request completes successfully with the response as the only parameter.
function Interface.openURL(url, callback) end

---Because client instances should not create windows with data bound to nonexistant database nodes, they need to ask the host to create a new data base node to act as the window datasource whenever a new record is required. This function sends a request to do this to the host asynchronously, with the host responding with an acknowledgement to create a new window instance if successful.
---Due to the asynchronous nature of this function, it does not return a reference to the window, returning immediately. If any further processing is required, other means to process the created window are required.
---A new datasource node will be created for the window. The host will create a new unique node under the node passed as the second parameter, i.e. the datasource node will be a child of the node specified in the root node parameter.
---It is possible to create client windows with openWindow. This option should be reserved for special cases and should not be used under normal circumstances.
---@param windowclass string The windowclass of the window to create
---@param rootnode string The name of the parent node used to create the data source, see above and windowinstance for details
function Interface.requestNewClientWindow(windowclass, rootnode) end

---Sets the text of a string resource.
---@param id string String resource ID
---@param text string Text to store in the string resource
function Interface.setString(id, text) end

---If a top level window with the specified windowclass and datasource exist, it is brought to the top of the window Z-order. If it was already at the top of the Z-order, it will be closed. If it does not exist, then a new window will be created with the specified windowclass and datasource.
---See `windowinstance` for more information on the parameter values.
---@param windowclass string The windowclass of the window to toggle
---@param datasource string The name of the datasource to use, see windowinstance for details
---@return windowinstance|nil # A windowinstance to the window, or nil if the request failed or the window was closed.
function Interface.toggleWindow(windowclass, datasource) end
