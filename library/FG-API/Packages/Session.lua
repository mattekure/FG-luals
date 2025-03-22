---@meta Session

---@class Session
---@field IsHost boolean Variable is `true` if client running as the host and `false` if running as a player or in local mode.
---@field IsLocal boolean Variable is `true` if client is running in local mode; otherwise returns `false`.
---@field VersionMajor number Variable is the major version number of the FG client currently running. Client version numbers are of the form, #.#.#; and this variable represents the first number.
---@field VersionMinor number Variable is the minor version number of the FG client currently running. Client version numbers are of the form, #.#.#; and this variable represents the second number.
---@field VersionRelease number Variable is the release version number of the FG client currently running. Client version numbers are of the form, #.#.#; and this variable represents the third number.
---@field CampaignName string Variable is the name of the currently active campaign.
---@field RulesetName string Variable is the name of the currently active ruleset.
---@field UserName string Variable is the local user's network username (i.e. the user’s FG account name).
---@field DebugMode boolean
Session = {}
