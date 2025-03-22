---@meta Extension

---@class Extension
Extension = {}

---This function can be used to retrieve information about a particular extension. The returned table contains information in the following fields:
---•name = [module display name]
---•author
---•description
---•version
---•loadorder
---•rulesetdependencies = [table with ruleset name as key, and table as value (minrelease, maxrelease)]
---•extensiondependencies = [table with extension name as key, and table as value (minversion, maxversion)]
---•exclusiongroups = [Integer indexed table of exclusion group names]
---@param lookupname string The “internal” name of the extension being targeted by the operation. (Same as file/folder name)
---@return table # A table containing information about the extension, see above for details
function Extension.getExtensionInfo(lookupname)
end

---This function returns a list of extensions loaded for this campaign.
---To get more information on an extension, see getExtensionInfo.
---@return table # An integer indexed table of string values containing the names of the extensions loaded.
function Extension.getExtensions()
end
