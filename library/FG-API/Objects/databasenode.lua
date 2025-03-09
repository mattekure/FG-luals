---@meta databasenode

---@module 'category'

---The campaign database tree contains the data from window controls and data sheets. The database exists as a tree format series of nodes, represented by databasenode objects. Each node (except the root nodes) has a parent, and a number of child nodes, as well as a name string. The database is preserved between sessions.
---Each node has a type, with all the intermediate nodes having the "node" type, and the leaf nodes having a type based on the data in the leaf node.
---Creating window instances and controls bound to the database will automatically create corresponding nodes in the database. Using the functions of this object, it is possible to also create new nodes and check for their existence explicitly.
---
---Database node identifier strings
---
---Many contexts in which node names are specified also accept database node identifier strings. These can be used to refer to a node possibly outside the current level (i.e. on a level below individual entries in an entry in a windowlist).
---Depending on the context where the identifiers are used, they can be either absolute or relative. Absolute contexts look for the specified node under the root of the database. The most common uses for absolute contexts are windowclass and windowlist data sources. Relative contexts look for the node under the current data source (which is context dependent). A common example of a relative context is the data source for a window control, which tries to find the named node under the window data source.
---Absolute contexts may have a data source under which a relative lookup could be performed. In such a case, a dot character at the beginning of the identifier will cause a relative lookup instead. An example of this is the windowlist data source. Identifiers in a relative context may also include the dot character, but it will be synonymous with the case without it.
---Adding further dot characters after the first to the beginning of the identifier will cause a corresponding number of steps upwards in the tree structure. Steps deeper into the tree can be specified by separating successive nodes with the dot character.
---
---Module data
---
---The data for each active module resides in its own data base tree. This allows more flexible data preparation for module design, and guarantees that interlinking data inside modules and between modules works predictably.
---Global level node listings (such as those found in ordinary windowlist listings) include module data from the corresponding module trees as well, if such data is present. E.g. a windowlist that takes its data from the "images" node would also receive all child nodes of any "image" nodes under all activated modules.
---To access a particular node in the module data bases, a special identifier string syntax is used. Node identifier strings for module data are formed by following the procedure above, prefixing the identifier with the at character '@' and following with the complete name of the module.

---@class databasenode

---Adds a child category for this data base node.
---@param category category|string New category information (or name)
function addChildCategory(category) end

---This function adds the specified user as a holder for this node and all child nodes. If the owner flag is set, the user will also be able to modify the contents of data nodes. In such a case, any existing ownership is revoked.
---###This function will only return valid values if running as the session host. Using User.isHost to confirm this is recommended.###
---@param username string The username of the user gaining the status
---@param owner boolean If true, the user will also be flagged the owner of the node
function addHolder(username, owner) end

---Create, or if it already exists fetch, the specified child node under the current node.
---@param name? string A relative node identifier specifying the child node to find. If this parameter is omitted, a new unique node name will be generated.
---@param type? string The type of node to create. If this parameter is omitted, an intermediate node will be created. Leaf nodes can be of types "number", "string", "formattedtext", "image", "dice" or "windowreference".
---@return databasenode|nil # If the node already exists, the return value is a reference to that node. If it was created, a reference to the created node is returned. If there was an error, returns nil.
function createChild(name, type) end

---Delete the database node, removing it from the database tree and deleting all child nodes. Any window instances using this node as their data source will be closed.
function delete() end

---Gets the category information for this data base node.
---@return category # Category information for specified node, including the following fields (name, mergeid, base, decal). The name field is the name of the category. The merge ID field is a value that can be specified for each module to allow multiple modules to be listed in a single category. The base field is a number defining the index of the background tab to use when displaying the category. The decal field is a number defining the index of the decal to use when displaying the category. The combination of all four entries defines a unique category.
function getCategory() end

---Fetches the specified child node under the current node.
---@param name string A relative node identifier specifying the child node to find
---@return databasenode|nil # A databasenode object representing the node, or nil if the node could not be found
function getChild(name) end

---Gets the child categories for this data base node.
---@return category[] # An integer-indexed table of category records. Each category record is a table with the following fields (name, mergeid, base, decal).
function getChildCategories() end

---Get the number of child nodes belonging to this node.
---@return number # The number of child nodes
function getChildCount() end

---Get all the child nodes of this node via numerical key.
---@param sourcenode databasenode
---@param subpath? string
---@return databasenode[] The child nodes are returned as databasenode objects in a table with numerical keys.
function getChildList(sourcenode, subpath) end

---Get all the child nodes of this node via name key.
---@return table<string, databasenode> # The child nodes are returned as databasenode objects in a table with keys corresponding to the names of the child nodes.
function getChildren() end

---TODO This definition is my own, it does not match the online definition as I think its wrong there
---Gets the default child category for this data base node. When new child nodes are created under this node, the default category is given to those child nodes.
---@return string # The name of the default category assigned to child nodes under the specified node.
function getDefaultChildCategory() end

---This function returns a list of all users registered as holders of this node. Holders will be notified of changes to the node value. The holder list is automatically updated as a result of window sharing operations.
---* This function will only return valid values if running as the session host. Using User.isHost to confirm this is recommended.
---@return string[] # Returns an integer indexed table containing the usernames of all registered holders for this node.
function getHolders() end

---Returns an integer indexed table containing the usernames of all registered holders for this node.
---@return string|nil # Returns the name of the module the node was loaded from, or nil if the node was not loaded from a module
function getModule() end

---Get the name of this node.
---@return string # Returns the string containing the node name
function getName() end

---Get the dot separated complete node name, from the root node to the current node.
---@return string # Returns the dot separated complete node name
function getNodeName() end

---This function returns the username of the client acting as the current owner of the node. Only the GM or the node owner can alter the value of the database node contents.
---* Only valid on host.
---@return string|nil # Returns the username of the user owning the node, or nil if no owner is registered.
function getOwner() end

---Fetches the parent of the current node.
---@return databasenode|nil # A databasenode object representing the parent node, or nil if the current node is a root level node
function getParent() end

---Returns the path of this node, appended with any path parameters provided. The module portion of the path returned will be inherited from the calling node. (if any)
---Database paths are of the form: [node].(...).[node][@Module Name]
---where there can be any number of valid XML tag names concatenated by periods to form the main path and the at symbol and module name is optional.
---@param ... string One or more strings to be appended to database path returned
---@return string # The string representation of the databasenode path
function getPath(...) end

---Returns the release number of the ruleset used to save the data, as defined by the release attribute of the database definition root element. The value is defined as a major and a minor version number.
---Any database nodes not directly created as a result of a load operation will have the value of the current ruleset release.
---* Ruleset release numbers are not preserved between sessions. Any data saved by the application will contain the latest release number.
---@return number # The major version number
---@return number # The minor version number
---@return table<string, number> # A table containing the major version number of each ruleset layer, where the key is the name of the ruleset layer.
---@return table<string, number> # A table containing the minor version number of each ruleset layer, where the key is the name of the ruleset layer.
function getRulesetVersion() end

---Returns a textual representation of the value contained in the database node. If the node type is not string, number or formattedtext, then nil will be returned.
---@return string|nil # Returns the string value of the database node value.
function getText() end

---Get the string identifying the type of this node. The possible values are "node" (representing an intermediate node), "number", "string", "formattedtext", "image", "dice" and "windowreference".
---@return string # The type string
function getType() end

---Returns the value contained in the database node. The return value(s) vary depending on the type of the node.
---return ... # Returns data contained in the database node
function getValue() end

---Returns the version number of the FG client last used to save the data, or since the last updateVersion call.
---@return number # The major version number
---@return number # The minor version number
function getVersion() end

---Returns whether the database node is empty.
---Certain database value types will always return false. (image values)
---@return boolean # Whether the database node is empty
function isEmpty() end

---Database nodes loaded from modules are modifiable unless marked static. These modifications are local to a campaign, and the node may be reverted back to its original state. This function may be used to check if such a node has any changes applied.
---Non-module campaign data base nodes always return false.
---@return boolean # Returns true if the node has been modified, false if it is identical to the module contents
function isIntact() end

---This function returns whether the current user can modify the node. Only the GM or the node owner can alter the value of the database node contents.
---@return boolean # Returns true if the user is the GM or owns the node, or false otherwise.
function isOwner() end

---TODO The return value listed here is different than the official site documetnation.  It appears like it should be a boolean based on true/false statement, but the website says its a string.
---Returns whether a node is public.
---Public nodes are available for viewing by any user, whether GM or player. A node can still be shared with specific players without being made public.
---@return boolean # Returns true if the node is public, false if it is not
function isPublic() end

---TODO The return value listed here is different than the official site documetnation.  It appears like it should be a boolean based on true/false statement, but the website says its a string.
---Determines whether a database node can be edited. Reasons for database nodes to be non-editable include: nodes marked as static, nodes from client or common modules, nodes not owned by client (host owns all nodes)
---@return boolean # Returns true if the node is not editable, false otherwise
function isReadOnly() end

---Database nodes may be flagged as static, disabling value editing completely. This flag is generally used for non-alterable reference data loaded from rules modules. This function can be used to check if a node is part of the static content.
---@return boolean # Returns true if the node is static, false otherwise
function isStatic() end

---A handler function that will be called when a new child node is added to this node.
---@param source databasenode A databasenode object reference identifying the node receiving a new child node
---@param child databasenode A databasenode object reference identifying the child node added
function onChildAdded(source, child) end

---A handler function that will be called when a child is deleted from this node's child list.
---@param source databasenode A databasenode object reference identifying the node causing the event
function onChildDeleted(source) end

---A handler function that will be called when the child list changes or data in a child node is updated.
---@param source databasenode A databasenode object reference identifying the node causing the event
---@param listchanged boolean Specifies whether the child list has changed
function onChildUpdate(source, listchanged) end

---A handler function that will be called when this node is deleted.
---@param source databasenode A databasenode object reference identifying the node causing the event
function onDelete(source) end

---A handler function that will be called when a node loaded from a module is either reverted back to its original state or receives a user modification.
---@param source databasenode A databasenode object reference identifying the node causing the event
function onIntegrityChange(source) end

---A handler function that will be called when the observer list for the node is changed, either by removing or adding users, or changing the node owner.
---@param source databasenode A databasenode object reference identifying the node causing the event
function onObserverUpdate(source) end

---A handler function that will be called when the data in this node is updated.
---@param source databasenode A databasenode object reference identifying the node causing the event
function onUpdate(source) end

---This function removes all users from the holder list for this node and all child nodes. The data is deleted from any client instance and any windows having a deleted node as their data source will be closed.
---* This function will only work if running as the session host. Using User.isHost to confirm this is recommended.
function removeAllHolders() end

---Removes a child category for this data base node. Any child nodes in this category will be given an empty category.
---@param category table|string Category to remove by name (either "name" element or string)
function removeChildCategory(category) end

---This function removes the specified user from the holder list for this node and all child nodes. The data is deleted from the client instance and any windows having a deleted node as their data source will be closed.
---**Warning**
---This function will only work if running as the session host. Using User.isHost to confirm this is recommended.
---@param username string The username of the user losing the holder status
function removeHolder(username) end

---Return a node loaded from a module back to the state it was when loaded. If the target node was not loaded from a module, or if it does not have any changes, this operation has no effect.
function revert() end

---Sets the category for this data base node. The category parameter can also be a table with a "name" element.
---@param category category|string Category information for specified node, including the following fields (name, mergeid, base, decal). If a string is specified, it will be used as a new table with the string as the name element.
function setCategory(category) end

---Sets the default child category for this data base node. When new child nodes are created under this node, the default category is given to those child nodes.
---@param category category|string Category name to set as default (either "name" element or string)
function setDefaultChildCategory(category) end

---TODO The return value listed here is different than the official site documetnation.  It appears like it should be a boolean based on true/false statement, but the website says its a string.
---Sets whether a node is public. While public, all addHolder, removeHolder and removeAllHolders function calls will be ignored.
---Public nodes are available for viewing by any user, whether GM or player. A node can still be shared with specific players without being made public.
---* Rulesets with compatibility less than v3.0 that call this function will generate a script error.
---@param value boolean If set to true, then the node will be set to the public state; otherwise, the node will be set to the non-public (unshared) state.
---@return boolean # Returns true if the node is public, false if it is not
function setPublic(value) end

---Sets the static flag of the database node. The values of static nodes are not modifiable.
---@param state boolean A value of true to set the node static, or false to remove the static state.
function setStatic(state) end

---Sets the data in the database node. The format of the parameter(s) depends on the type of the node.
---@param ... any Data placed in the database node
function setValue(...) end

---Updates the child category information for this data base node. The source category with the given name will be replaced wih tht target category, and the category information for all child nodes will be updated.
---@param source_category category|string Original category information (or name)
---@param target_category category|string Desired category information (or name)
function updateChildCategory(source_category, target_category) end

---Sets the version number value of the campaign database to the current FG and ruleset versions.
function updateVersion() end
