---@meta SetManager

---@class SetManager

SetManager = {}

function SetManager.SetOperations:add(vParam) end
function SetManager.SetOperations:remove(vParam) end
function SetManager.SetOperations:contains(vParam) end
function SetManager.SetOperations:concat(vDelimiter) end
function SetManager.SetOperations:union(vParam) end
function SetManager.SetOperations:intersect(vParam) end
function SetManager.SetOperations:difference(vParam) end
function SetManager.isSet(v) end
function SetManager.new(vItems) end
function SetManager.add(set, vItems) end
function SetManager.remove(set, vItems) end
function SetManager.contains(set, vItems) end
function SetManager.concat(set, vDelimiter) end
function SetManager.union(set, set2) end
function SetManager.intersect(set, set2) end
function SetManager.difference(set, set2) end
