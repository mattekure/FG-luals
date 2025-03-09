---@meta User

---@module "databasenode"

---This is a global built in package that provides information about and methods for handling the data for the currently active identities and users. The package also provides handlers for user and identity activation and state monitoring.
---@class User
User = {}

---Creates a new entry into the local character list. The return value is a databasenode object containing the root node of the new character's data.
---@return databasenode # A databasenode object identifying the new character and containing the character's data
function User.createLocalIdentity() end

---Get the list of active identity names for the current user (if client) or the specified user (if host).
---@param username? string The name of the user for which active identities is being queried (Required on host call).
---@return string[] # An integer indexed table containing string values representing the identities in use by the user
function User.getActiveIdentities(username) end

---Get the list of users names for all connected clients.
---@return string[] # An integer indexed table containing string values representing the connected users
function User.getActiveUsers() end

---Get the list of identity names in use by all connected clients.
---@return string[] # An integer indexed table containing string values representing the identities in use
function User.getAllActiveIdentities() end

---Returns the name of the currently active campaign.
---@return string # The name of the active campaign
function User.getCampaignName() end

---This function returns the identity identifier of the currently active identity. By default, the identity is queried for the active user. If running as the host, the parameter may be specified to indicate a username of a connected client whose current identity selection will be returned.
---@param username? string The username of the client whose current identity is being queried
---@return string # The identity identifier of the currently active identity
function User.getCurrentIdentity(username) end

---This function returns the colors used for the current identity. The function returns the color used for the die base and the pointers painted when this identity is active, and whether black or white text is used on the dice.
---@return string # A string containing the color for the die base and pointers, in the format "RRGGBB" where the color components are hexadecimal digits representing color channel values in the range 0 .. 255(boolean). A value of `true` will render dice text as black, a value of `false` will use white color
function User.getCurrentIdentityColors() end

---This function returns the currently active color selection for the specified identity. The color will be given as a string value in the format "AARRGGBB" where the components are hexadecimal digits representing the values (in the range 0 .. 255) for alpha (transparency), red, green and blue color channels, respectively.
---@param identity string The identifier of the identity whose color is being queried
---@return string # The color for the queried identity in the form "AARRGGBB"
function User.getIdentityColor(identity) end

---Fetch the string used as the label for the specified identity. If the identity name is not specified, the label for the current identity will be retrieved.
---@param identityname? string The identity identifier for the identity whose label is being queried
---@return string|nil # The label of the identity, or nil if no identity is active or running as the host
function User.getIdentityLabel(identityname) end

---Fetch the name of the user that owns the specified identity.
---@param identityname string The name of the identity for which the owner is being queried
---@return string|nil # The name of the user who owns the identity, or nil if the identity is not owned by any user
function User.getIdentityOwner(identityname) end

---Lists the currently available locally saved characters that can be used as identities in the running connected session, or in the active local mode session.
---If the application is running in local mode, and a cached campaign has been selected, this list also includes characters used in the remote session. These characters' data cannot be modified. When connected to a running session, these identities are not included.
---Each local mode character entry consists of a table with two or three values. The `dbnode` value contains a databasenode object reference identifying the database node containing the information for the character.  The `session` value contains a string identifying the session the character is associated with, and is empty for characters that aren't used in remote campaigns. The `id` value is the identifier of the identity, and is only present for characters used in remote campaigns.
---@return table # An integer indexed table containing entries with information about locally available characters.
function User.getLocalIdentities() end

---This function fetches the portrait set for a local character. The character is identified by a databasenode reference obtained from User.getLocalIdentities.
---@param identityroot databasenode
---@return string # A string identifying the currently set portrait. This value should only be used to pass to other portrait elements using functions such as portraitselectioncontrol.setFile
function User.getLocalIdentityPortrait(identityroot) end

---Get the list of identity names owned by this client.
---@return string[] # An integer indexed table containing string values representing the identities in use
function User.getOwnedIdentities() end

---This function fetches a list of the directories in the portraits subfolder found in the current campaign directory. If a relative path is defined, then the relative path will be appended to the campaign portraits directory path before retrieving directories. The contents of the returned list should not be used directly, but rather can be used to populate controls in a portrait selection window.
---@return string[] # An integer indexed list of strings containing the directories found
function User.getPortraitDirectoryList() end

---This function fetches a list of the portrait files found in the locally installed portrait folder. The contents of the returned list should not be used directly, but rather can be used to populate controls in a portrait selection window.
---@return string[] # An integer indexed list of strings containing the filenames of the portrait images found
function User.getPortraitFileList() end

---Lists the identities available for the current user on the remote host. The list will include unowned identities and identities owned by the user with the current username.
---The identity list is populated using the session data base, and will include all the child nodes of the node identified by the node parameter. The labelnode parameter will be used to fetch a child node of the identity node, and will contain the text used as the label for the identity.
---@param node string A global database identifier identifying the node in the session database from where the list of identities should be retrieved
---@param labelnode string The name of a child node under the identity node containing the string value to use as a label for the identity
---@param resultcallback function A callback function that will be called for each matching result delivered by the host. The function will receive two string value parameters representing the identity identifier and the label for the identity, respectively.
function User.getRemoteIdentities(node, labelnode, resultcallback) end

---Returns the name of the currently active ruleset.
---@return string # The name of the active ruleset
function User.getRulesetName() end

---Returns the local user's network username.
---@return string # The username string
function User.getUsername() end

---Check if the currently running application instance is acting as a session host.
---@return boolean # Returns `true` if running as the host and `false` if running as a client. Always returns `false` in local mode.
function User.isHost() end

---Check if the currently running application instance is running in local mode.
---@return boolean # Returns `true` if running in local mode and `false` otherwise
function User.isLocal() end

---This function can be used to check if an identity is owned by the current user (on the client) or held by a specific user (on the host).
---@param identityname string The identity whose status is being queried
---@param username? string The username whose ownership is being queried. Only used when calling from the host machine.
---@return boolean # If `true`, the user owns the identity, otherwise `false`.
function User.isOwnedIdentity(identityname, username) end

---Kicks the specified user from the session, and release all their identities.
---This function will only work if running as a host.
---@param username string The user name to kick
function User.kick(username) end

---Registered functions on this handler are called when a user activates or deactivates an identity.
---@param identityname string The identifier of the identity being activated or deactivated
---@param username string The username of the user triggering the event
---@param activated boolean A value of `true` if the identity is being activated, or `false` otherwise
function User.onIdentityActivation(identityname, username, activated) end

---Registered functions on this handler are called when the state of an activated identity changes.
---If the value of the statename parameter is "current", the event indicates that the user has changed his currently active identity. The event is triggered once for each of the users activated identities, the state parameter being true for the newly activated identity and false otherwise.
---If the value of the statename parameter is "label", the event indicates that the specified identity's label string has been changed. In this case, the state parameter is a string containing the value of the new label string.
---If the value of the statename parameter is "color", the identity's color has changed. The state parameter should be ignored, and the getIdentityColor function used to update the color setting's display.
---@param identityname string The identifier of the identity that is the target of the operation triggering the event
---@param username string The username of the user triggering the event
---@param statename string A string representing the identity state flag whose value is changing. See above for details.
---@param state any The new value for the user state flag. See above for details.
function User.onIdentityStateChange(identityname, username, statename, state) end

---Registered functions on this handler are called whenever a user logs in to or out of the running session.
---@param username string The username of the connecting/disconnecting client
---@param activated boolean This value is `true` if the user is logging on, or `false` if the user is logging off
function User.onLogin(username, activated) end

---Registered functions on this handler are called when the state of a connected user changes.
---Currently, this event notifies the user interface of changes in the user's input activity. The possible values for the statename paramter are "active", "typing" and "idle". For these events, the state variable is always true.
---@param username string The username of the client triggering the event
---@param statename string A string representing the user state flag whose value is changing. See above for details.
---@param state boolean The new value for the user state flag. See above for details.
function User.onUserStateChange(username, statename, state) end

---Release the specified identity, deactivating it from current use.
---@param identityname string The name of the identity to release
function User.releaseIdentity(identityname) end

---Send a request to activate the given identity to the host. The request may fail if the identity is already in use or owned by another user.
---@param identity_id string The identifier of the identity being requested for ownership (i.e. name of the database node under the chardbroot specified for the ruleset).  To request a brand new character node, specify the empty string.
---@param second boolean No longer used. Left for backward compatibility. Use any value.
---@param third boolean No longer used. Left for backward compatibility. Use any value.
---@param import_node databasenode If not nil, this parameter must be the database node object to be imported.  Do not specify a non-nil value if you are not using empty string for the first parameter to avoid issues.
---@param resultcallback function A function that will be called when the request is complete. The function will receive two parameters. The first parameter is a boolean value indicating whether the request was successful (`true`) or not (`false`). The second parameter is a string containing the identifier of the requested identity.
function User.requestIdentity(identity_id, second, third, import_node, resultcallback) end

---Rings a bell on the client computer, specified by user name parameter.
---If no parameter is supplied, then the bell will be rung on the local client.
---@param username? string Optional. The user name of the client where the bell is to be rung.
function User.ringBell(username) end

---This function changes the active identity for the current client. If the identity is used by another client or not owned by the current user, the function will fail.
---@param identityname string The identity identifier of the identity to activate
function User.setCurrentIdentity(identityname) end

---This function sets the colors used for the current identity. The function sets the color used for the die base and the pointers painted when this identity is active, and determines whether to use black or white text on the dice.
---@param color string A string containing the color for the die base and pointers, in the format "RRGGBB" where the color components are hexadecimal digits representing color channel values in the range 0 .. 255. If alpha is zero or not defined, FF is assumed.
---@param blacktext boolean A value of true will render dice text as black, a value of false will use white color
function User.setCurrentIdentityColors(color, blacktext) end

---This function sets the portrait for a local character. The character is identified by a databasenode reference obtained from User.getLocalIdentities or User.createLocalIdentity.
---@param identityroot databasenode
---@return string # A string identifying the currently set portrait. This value should only be used to pass to other portrait elements using functions such as portraitselectioncontrol.setFile
function User.setLocalIdentityPortrait(identityroot) end

---This function changes the portrait of the specified identity to the one represented by the given portrait file. If used in local mode (i.e. Manage Characters), then only a databasenode may be used for the first parameter.
---@param identity string|databasenode The node name (not full path) of the character identity whose portrait is being changed, or a databasenode object representing the target identity.
---@return string # The file identifying the portrait to use
function User.setPortrait(identity, portraitfile) end
