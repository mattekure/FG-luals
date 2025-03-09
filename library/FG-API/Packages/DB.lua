---@meta DB

---@module 'databasenode'
---@module 'category'

---@class DB
DB = {}

---Adds a child category for the specified data base node.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param category category|string New category information (or name)
function DB.addChildCategory(nodeid, category) end

---Add a general event handler callback function.
--- The handler function should have the following signature: [function name]([parameters]). The parameters will vary depending on the event the function is attached to, as follows.
---• [onAuxCharLoad] parameters = (nodeCharAdded)
---• [onDataLoaded] parameters = () [Requires v4.4.7+]
---• [onExport] parameters = (nodeExport, fileName, childNameTagOverride, isListNode)
---• [onImport] parameters = (nodeImport)
---@param event string The event to be captured (onAuxCharLoad, onDataLoaded, onExport, onImport)
---@param callback function The function to be called when the event triggers
function DB.addEventHandler(event, callback) end

---Add an event handler callback function to a specified database event on any node matching the specified database path.
---The handler function should have the following signature: `[function name]``([parameters])`. The parameters will vary depending on the database event the function is attached to, as follows.
---• `[onAdd]` parameters = `(nodeAdded)`
---• `[onCategoryChange]` parameters = `(nodeChanged)`
---• `[onChildAdded]` parameters = `(nodeParent, nodeChildAdded)`
---• `[onChildCategoriesChange]` parameters = `(nodeParent)`
---• `[onChildDeleted]` parameters = `(nodeParent)`
---• `[onChildUpdate]` parameters = `(nodeParent, bListchanged)`
---• `[onDelete]` parameters = `(nodeToBeDeleted)`
---• `[onIntegrityChange]` parameters = `(nodeChanged)`
---• `[onUpdate]` parameters = `(nodeUpdated)`
---@param nodepath string A data base path identifier. The "\*" character can be used as a wildcard for a path segment.
---@param event string The event to be captured (onUpdate, onAdd, onDelete, onObserverUpdate, onChildAdded, onChildUpdate, onChildDeleted, onIntegrityChange)
---@param callback function The function to be called when the event triggers
function DB.addHandler(nodepath, event, callback) end

---This function adds the specified user as a holder for the specified database node and all child nodes. If the owner flag is set, the user will also be able tode modify the contents of data nodes. In such a case, any existing ownership is revoked.
---###This function will only work if running as a host.###
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param username string The username of the user gaining the status
---@param owner boolean If true, the user will also be flagged as the owner of the node.
function DB.addHolder(sourcenode, username, owner) end

---Creates a backup of the current database, saved to a unique file name. `(db.script.#.xml)`
---###Only available on host.###
function DB.backup() end

---Converts the current campaign to a different specified ruleset.
---@param ruleset string Target ruleset for conversion
function DB.convertCampaign(ruleset) end

---This function can be used to copy the contents of a data base node, using data node identifier paths. Either paths or objects can be used as parameters.
---###The source database node must exist, and the destination node if it exists already must be the same value type.###
---@param sourcenodeid string|databasenode The data node identifier path (or a databasenode object) for the source node
---@param destnodeid string|databasenode A data node identifier path (or a databasenode object) for the destination node
---@return databasenode|nil # A databasenode object representing the destination node, or `nil` if the node was unable to be created for any reason.
function DB.copyNode(sourcenodeid, destnodeid) end

---Create, or if it already exists fetch, the specified child node under the specified node.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param name? string A relative node identifier specifying the child node to find. If this parameter is omitted, a new unique node name will be generated.
---@param type? string The type of node to create. If this parameter is omitted, an intermediate node will be created. Leaf nodes can be of types "number", "string", "formattedtext", "image", "dice" or "windowreference".
---@return databasenode|nil #If the node already exists, the return value is a reference to that node. If it was created, a reference to the created node is returned. If there was an error, returns `nil`.
function DB.createChild(sourcenode, name, type) end

---Create a child node under parentdestnode using automatic default database ID naming; and copy the data source node data into the new node. [Requires v4.4.7+]
---@param parentdestnode string|databasenode A data node identifier path (or a databasenode object) representing the parest destination node
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the source node
---@return databasenode|nil # A reference to the created node is returned. If there was an error, returns nil.
function DB.createChildAndCopy(parentdestnode, sourcenode) end

---This function creates a new top level data base node of the given type.
---@param nodeid string A data base node identifier
---@param type? string The type of node to create. If this parameter is omitted, an intermediate node will be created. Leaf nodes can be of types "number", "string", "formattedtext", "image", "dice" or "windowreference".
---@return databasenode|nil # A databasenode object representing the created node, or `nil` if the operation failed
function DB.createNode(nodeid, type) end

---Deletes the specified child node under the specified node. (if it exists)
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param name? string A relative node identifier specifying the child node to delete
function DB.deleteChild(sourcenode, name) end

---Deletes all children under the specified node. (if it exists)
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string A relative node identifier specifying the node to delete children from (if sourcenode is a databasenode object)
function DB.deleteChildren(sourcenode, subpath) end

---This function deletes a data base node.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
function DB.deleteNode(nodeid) end

---This function exports an XML data file to the host's hard drive containing the contents of the specified database node.
---A root node to contain the exported contents is always created in the XML data file.
---The export will follow these criteria depending on the rewrite and listexport parameters:
---If rewrite and listexport not defined, then the data file root node will contain an export of all the children of the specified node.
---If rewrite is defined but listexport is missing or false, then the data file root node will contain a tag set using the value of the rewrite parameter which will contain an export of all the children of the specified node. (Ex: To export a single character from a ruleset, DB.export("output.xml", "charsheet.id-00001", "character"))
---If rewrite is defined and listexport is true, then the exporter will assume that the node to export is a list node. The data file root node will contain a tag set for each child record of the target database using the value of the rewrite parameter instead of the child node ID which will contain an export of all the children of the matching child node. (Ex: To export all characters from a ruleset, `DB.export("output.xml", "charsheet", "character", true)`)
---###This function will only work if running as a host.###
---@param filename string The name of the file to be exported.
---@param targetnode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param rewrite? string See function description.
---@param listexport boolean See function description.
function DB.export(filename, targetnode, rewrite, listexport) end

---This function can be used to find a data base node in a global scope based on a global database node identifier.
---@param nodeid string A global data base node identifier
---@return databasenode|nil # A databasenode object representing the given identifier, or nil if the node was not found
function DB.findNode(nodeid) end

---Gets the category information for the specified data base node.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return category # Category information for specified node, including the following fields (name, mergeid, base, decal). The name field is the name of the category. The merge ID field is a value that can be specified for each module to allow multiple modules to be listed in a single category. The base field is a number defining the index of the background tab to use when displaying the category. The decal field is a number defining the index of the decal to use when displaying the category. The combination of all four entries defines a unique category.
function DB.getCategory(nodeid) end

---Fetches the specified child node under the specified node.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param name string A relative node identifier specifying the child node to find
---@return databasenode|nil # A databasenode object representing the node, or nil if the node could not be found or the specified node identifier does not exist.
function DB.getChild(sourcenode, name) end

---Gets the child categories for the specified data base node.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return category[] # An integer-indexed table of category records. Each category record is a table with the following fields (name, mergeid, base, decal).
function DB.getChildCategories(nodeid) end

---Get the number of child nodes belonging to the specified node.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string A relative node identifier specifying the node to delete children from (if sourcenode is a databasenode object)
---@return number # The number of child nodes, or zero if database node does not exist.
function DB.getChildCount(sourcenode, subpath) end

---Get all the child nodes of the specified node via numerical key.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string A relative node identifier specifying the node to get children from (if sourcenode is a databasenode object)
---@return table # The child nodes are returned as databasenode objects in a table with numerical keys. If the database node does not exist, an empty table is returned.
function DB.getChildList(sourcenode, subpath) end

---Get all the child nodes of the specified node/path via name key.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string A relative node identifier specifying the node to get children from (if sourcenode is a databasenode object)
---@return table # The child nodes are returned as databasenode objects in a table with keys corresponding to the names of the child nodes. If the database node does not exist, an empty table is returned.
function DB.getChildren(sourcenode, subpath) end

---Get all the child nodes of the specified path. The path to use in the child lookup will be calculated from the parameters, then any children of that path will be compiled across the campaign database as well as all loaded module databases.
---@param source? databasenode Optional source node.
---@param sourcepath string Absolute path (if no database node parameter), or relative path from the database node parameter.
---@return table # The child nodes are returned as databasenode objects in a table with keys corresponding to the names of the child nodes. If the database node does not exist, an empty table is returned.
function DB.getChildrenGlobal(source, sourcepath) end

---Gets the default child category for the specified data base node. When new child nodes are created under this node, the default category is given to those child nodes.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return string # The name of the default category assigned to child nodes under the specified node.
function DB.getDefaultChildCategory(nodeid) end

---This function returns a list of all users registered as holders for the specified database node. Holders will be notified of changes to the node value. Users are automatically added to the holder list as a result of window sharing operations.
---###This function will only work if running as a host.###
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return table # Returns an integer indexed table containing the usernames of all registered holders for this node.
function DB.getHolders(sourcenode) end

---Returns the release number of the ruleset used to save the data currently being imported (or last imported if called after import event).
---@return number # The major version number
---@return number # The minor version number
---@return table # A table containing the major version number of each ruleset layer, where the key is the name of the ruleset layer.
---@return table # A table containing the minor version number of each ruleset layer, where the key is the name of the ruleset layer.
function DB.getImportRulesetVersion() end

---Returns the version number of the FG client used to save the data currently being imported (or last imported if called after import event).
---@return number # The major version number
---@return number # The minor version number
function DB.getImportVersion() end

---Retrieves the name of the module the data base node was loaded from.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return string|nil # Returns the name of the module the node was loaded from, or nil if the node was not loaded from a module
function DB.getModule(sourcenode) end

---Returns a database node name from the databasenode parameter provided. This only returns the immediate node name.  If you want the full path, see DB.getPath API.
---@param node databasenode A databasenode object to be queried.
---@return string # The string representation of the databasenode name
function DB.getName(node) end

---This function returns the username of the client acting as the current owner of the specified node. Only the GM or the node owner can alter the value of the database node contents.
---###Only valid on host.###
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return string|nil # Returns the username of the user owning the node, or nil if no owner is registered.
function DB.getOwner(nodeid) end

---Fetches the parent of the specified node.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return databasenode|nil #A databasenode object representing the parent node, or nil if the current node is a root level node or the specified node identifier does not exist.
function DB.getParent(sourcenode) end

---Returns a database path comprised of the optional databasenode parameter and any path parameters provided. The module portion of the path returned will be inherited from the databasenode parameter. (if provided, and if the node is from a module)
---Database paths are of the form: `[node].(...).[node][@Module Name]`
---where there can be any number of valid XML tag names concatenated by periods to form the main path and the at symbol and module name is optional.
---@param node? databasenode A databasenode object to be used as the basis for the path returned.
---@param ...? string One or more strings to be appended to database path returned.
---@return string # The string representation of the databasenode path
function DB.getPath(node, ...) end

---Returns the root node for the specified database. If parameter missing or empty string, then the root of the campaign database is returned. Otherwise, the string is assumed to be a module name.
---@param dbname string Name of the database
---@return databasenode|nil # A databasenode object representing the root node, or nil if the module specified is not loaded or does not exist.
function DB.getRoot(dbname) end

---Returns the release number of the ruleset last used to save the data, as defined by the **release** attribute of the database definition root element.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return number # The major version number
---@return number # The minor version number
---@return table # A table containing the major version number of each ruleset layer, where the key is the name of the ruleset layer.
---@return table # A table containing the minor version number of each ruleset layer, where the key is the name of the ruleset layer.
function DB.getRulesetVersion(sourcenode) end

---Returns a textual representation of the value contained in the specified database node. If the node type is not string, number or formattedtext, then the default values will be returned or `nil` if no default values specified.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string If the first parameter has type databasenode, then this parameter specifies the relative data node identifier path from the specified node object.
---@param default? string The value(s) to be returned if getText fails. (node does not exist; or not string, number or formattedtext value type)
---@return string|nil # Returns the string value of the database node value.
function DB.getText(sourcenode, subpath, default) end

---Get the string identifying the type of the specified node. The possible values are "node" (representing an intermediate node), "number", "string", "formattedtext", "image", "dice" and "windowreference".
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return string # The type string
function DB.getType(nodeid) end

---Returns the value contained in the specified database node. The return value(s) vary depending on the type of the node. If the node does not exist or if the node is a non-value type, then the default values passed in will be returned or `nil` if no default values are specified.
---@param sourcenode databasenode A databasenode object representing the parent of the target node
---@param subpath? string If the first parameter has type databasenode, then this parameter specifies the relative data node identifier path from the specified node object.
---@param default? any The value(s) to be returned if getValue fails. (node does not exist; or non-value node)
---@return any ... # Returns data contained in the database node
function DB.getValue(sourcenode, subpath, default) end

---Returns the value contained in the specified database node. The return value(s) vary depending on the type of the node. If the node does not exist or if the node is a non-value type, then the default values passed in will be returned or `nil` if no default values are specified.
---@param nodepath string A data base path identifier.
---@param default? any The value(s) to be returned if getValue fails. (node does not exist; or non-value node)
---@return any ... # Returns data contained in the database node
function DB.getValue(nodepath, default) end

---Returns the version number of the FG client last used to save the data, or since the last updateVersion call.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return number # The major version number
---@return number # The minor version number
function DB.getVersion(sourcenode) end

---This function imports an XML data file from the host's hard drive as children of the specified database node.
---The root node of the XML data file is always ignored.
---If a list child name is specified, then the target node will be assumed to be a list node, and each XML record under the data file root node with the given list child name will instantiate a unique list record and copy the contents from the XML sub-record to the new unique list record. (Ex: To import all characters from an XML file, `DB.import("output.xml", "charsheet", "character")`)
---###This function will only work if running as a host.###
---@param filename string The name of the file to be imported.
---@param targetnode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param listchildname? string See function description.
function DB.import(filename, targetnode, listchildname) end

---Returns whether the source database node is empty.
---@param sourcenode databasenode Certain database value types will always return false. (image values)
---@return boolean # Whether the database node is empty
function DB.isEmpty(sourcenode) end

---Database nodes loaded from modules are modifiable unless marked static. These modifications are local to a campaign, and the node may be reverted back to its original state. This function may be used to check if such a node has any changes applied.
---
---Non-module campaign data base nodes always return false.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return boolean # Returns `false` if the node has been modified, `true` if it is identical to the module contents
function DB.isIntact(sourcenode) end

---This function returns whether the current user can modify the specified node. Only the GM or the node owner can alter the value of the database node contents.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return boolean # Returns `true` if the user is the GM or owns the node, or `false` otherwise.
function DB.isOwner(nodeid) end

---Returns whether the specified node is public.
---Public nodes are available for viewing by any user, whether GM or player. A node can still be shared with specific players without being made public.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@return boolean # Returns `true` if the node is public, `false` if it is not
function DB.isPublic(nodeid) end

---Determines whether the specified database node can be edited. Reasons for database nodes to be non-editable include: nodes marked as static, nodes from client or common modules, nodes not owned by client (host owns all nodes)
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return boolean # Returns `true` if the node is not editable, `false` otherwise
function DB.isReadOnly(sourcenode) end

---Database nodes may be flagged as static, disabling value editing completely. This flag is generally used for non-alterable reference data loaded from rules modules. This function can be used to check if a node is part of the static content.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@return boolean # Returns `true` if the node is static, `false` otherwise
function DB.isStatic(sourcenode) end

---A handler function that will be called when a character tree is loaded into memory that exists outside the primary database. (campaign characters in local mode, local characters in client mode)
---@param source databasenode A databasenode object reference identifying the node causing the event
function DB.onAuxCharLoad(source) end

---A handler function that will be called when a database tree is imported into the primary database. (i.e. character import)
---@param source databasenode A databasenode object reference identifying the node causing the event
function DB.onImport(source) end

---A handler function that will be called when a node loaded from a module is either reverted back to its original state or receives a user modification.
---@param source databasenode A databasenode object reference identifying the node causing the event
function DB.onIntegrityChange(source) end

---This function removes all users from the holder list for the specified database node and all child nodes. The data is deleted from any client instance and any windows having a deleted node as their data source will be closed.
---###This function will only work if running as a host.###
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
function DB.removeAllHolders(sourcenode) end

---Removes a child category for the specified data base node. Any child nodes in this category will be given an empty category.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param category category|string
function DB.removeChildCategory(nodeid, category) end

---Remove an event handler callback function previously specified using addHandler function.
---@param nodepath string A data base path identifier. The `'*'` character can be used as a wildcard for a path segment.
---@param event string The event to be captured (onUpdate, onAdd, onDelete, onObserverUpdate, onChildAdded, onChildUpdate, onChildDeleted, onIntegrityChange)
---@param callback function The callback function to be removed
function DB.removeHandler(nodepath, event, callback) end

---This function removes the specified user from the holder list for the specified database node and all child nodes. The data is deleted from the client instance and any windows having a deleted node as their data source will be closed.
---###This function will only work if running as a host.###
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param username string The username of the user losing the holder status
function DB.removeHolder(sourcenode, username) end

---Return a node loaded from a module back to the state it was when loaded. If the target node was not loaded from a module, or if it does not have any changes, this operation has no effect.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
function DB.revert(sourcenode) end

---Sets the category for the specified data base node. The category parameter can also be a table with a "name" element.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param category category|string Category information for specified node, including the following fields (name, mergeid, base, decal). If a string is specified, it will be used as a new table with the string as the name element.
function DB.setCategory(nodeid, category) end

---Sets the default child category for the specified data base node. When new child nodes are created under this node, the default category is given to those child nodes.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param category category|string Category name to set as default (either "name" element or string)
function DB.setDefaultChildCategory(nodeid, category) end

---This function sets the owner of the specified node to the specified player name. Only the GM or the node owner can alter the value of the database node contents.
---###Only valid on host.###
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param owner string The name of the player to gain ownership of the data base node
function DB.setOwner(nodeid, owner) end

---Sets whether the specified node is public. While public, all addHolder, removeHolder and removeAllHolders function calls will be ignored.
---Public nodes are available for viewing by any user, whether GM or player. A node can still be shared with specific players without being made public.
---###Rulesets with compatibility less than v3.0 that call this function will generate a script error.###
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param value boolean If set to `true`, then the node will be set to the public state; otherwise, the node will be set to the non-public (unshared) state.
function DB.setPublic(nodeid, value) end

---Sets the static flag of a database node. The values of static nodes are not modifiable.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param state boolean A value of `true` to set the node static, or `false` to remove the static state.
function DB.setStatic(sourcenode, state) end

---Sets the data in the specified database node path. If the node exists already, the type value must match the existing database node type. If the node does not exist, a new node will be created with the specified type. The format of the value parameter(s) depends on the type of the node.
---@param sourcenode string|databasenode A data node identifier path (or a databasenode object) representing the target node
---@param subpath? string If the first parameter has type databasenode, then this parameter specifies the relative data node identifier path from the specified node object.
---@param type string Identifier for the data type of the new or existing node.
---@param value any Data to be placed in the database node
function DB.setValue(sourcenode, subpath, type, value) end

---Updates the child category information for the specified data base node. The source category with the given name will be replaced with the target category, and the category information for all child nodes will be updated.
---@param nodeid string|databasenode Data node identifier path (or databasenode object)
---@param source_category category|string Original category information (or name)
---@param target_category category|string Desired category information (or name)
function DB.updateChildCategory(nodeid, source_category, target_category) end

---Sets the version number value of the campaign database to the current FG and ruleset versions.
function DB.updateVersion() end
