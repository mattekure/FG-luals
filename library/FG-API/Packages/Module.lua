---@meta

---@class Module
Module = {}

---Requests the activation of a specified module. For some modules, the process is asynchronous, requiring communication with the host before the activation is completed.
---@param name string The name of the module being targeted by the operation
function Module.activate(name) end

---Requests the deactivation of the given module. Host deactivation will not cause unloading of locally loaded client modules, only shared data. See setModulePermissions for more information.
---@param name string The name of the module being targeted by the operation
function Module.deactivate(name) end

---Exports a set of database nodes, images and tokens to a data module file within the modules subfolder of the FG data folder.  Any tokens or images referenced by exported database nodes will automatically be included.
---@param parametertable table A table of containing multiple parameters with the following keys:
---• name (string) - The lookup name of the new module
---• displayname (string) - The visible name of the new module.
---• category (string) - The category of the new module.
---• author (string) - The author of the new module.
---• ruleset (string) - The ruleset targeted by the new module. Leave empty if targeting all rulesets.
---• filename (string) - The file name of the new module. (.mod extension will be appended.)
---• thumbnail (string) - The file name of the thumbnail graphic which should be used for the module.
---• playervisible (bool) - Whether the new module is targeting players or GMs.
---• exportnodes (table) -Table of string values indicating the database paths to export.
---• exportassets (table) - Table of string values indicating the asset names to export.
---• assetrewrites (table) - Table of key-value string pairs indicating asset path rewrites from original path to new module path.
---@return boolean # A value of true will be returned if the export is successful, otherwise a value of false will be returned.
function Module.export(parametertable) end

---This function can be used to retrieve information about a particular module. The returned table contains information in the following fields:
---• name = [lookupname]
---• displayname
---• category
---• author
---• installed (on local machine)
---• loaded
---• loading (from host machine)
---• anyflag = [bool; whether module can be used in any ruleset or specific rulesets (including this one)]
---• permission (none, disallow, allow, autoload)
---• intact (host only)
---• replaces (which other modules does this one override)
---@param lookupname string The “internal” name of the ruleset being targeted by the operation. (Defaults to file/folder name; can be overriden in the module XML)
---@return table # A table containing information about the module, see above for details
function Module.getModuleInfo(lookupname) end

---This function returns a list of modules available. The list will include locally available modules compatible with the current ruleset, as well as modules requested for use by clients (for the host) or loaded host modules with shared data (for clients).
---To get more information on a module, see getModuleInfo.
---@return table An integer indexed table of string values containing the names of the modules available.
function Module.getModules() end

---This event is fired when a client requests loading a module that does not have its permissions set. The request will remain pending (with the module not loaded) on the client until the host acknowledges the request by blocking or allowing the operation.
---@param name string The name of the module causing the event
function Module.onActivationRequested(name) end

---This event is fired when a new module is added to the list of modules. This might occur either due to clients requesting to load a module not installed on the host computer (when running as host) or the host activating modules not found locally on client computers and containing shared data (when running as a client).
---@param name string The name of the module causing the event
function Module.onModuleAdded(name) end

---This event is fired when a module is loaded.
---@param name string The name of the module causing the event
function Module.onModuleLoad(name) end

---This event is fired when a module is removed from the list of modules. This will occur on clients when the host unloads modules containing shared data not found as a local installation.
---@param name string The name of the module causing the event
function Module.onModuleRemoved(name) end

---This event is fired when a module is unloaded.
---@param name string The name of the module causing the event
function Module.onModuleUnload(name) end

---This event is fired when some properties of a module are changed, typically requiring updating of a module listing interface. See the getModuleInfo function for more information on module properties.
---@param name string The name of the module causing the event
function Module.onModuleUpdated(name) end

---This function is called when an attempt is made to open a new top level window for data contained in an unloaded module. Returning a value other than true will cause the window creation to fail, as will not having the module loaded after this function returns.
---@param name string The name of the module causing the event
---@return boolean # A value of true will force the engine to retry opening the window with the given module data source. Otherwise, the creation of the requested top level window fails.
function Module.onUnloadedReference(name) end

---Removes all user modifications to data loaded from the specified module, reverting it back to the original contents.
---@param name string The name of the module being targeted by the operation
function Module.revert(name) end

---Sets the loading permissions for the given module. This function will fail if called from a client mode script.
---@param name string The name of the module being targeted by the operation
---@param allow boolean A value of true to allow clients to load the module, or false to prohibit loading
function Module.setModulePermissions(name, allow) end
