---@meta CharInventoryManager

---@class CharInventoryManager

CharInventoryManager = {}

function CharInventoryManager.enableSimpleLocationHandling() end
function CharInventoryManager.onLocationHandlingCarriedChange(nodeItem) end
function CharInventoryManager.enableInventoryUpdates(sList) end
function CharInventoryManager.registerFieldUpdateCallback(sField, fCallback) end
function CharInventoryManager.onFieldUpdate(nodeField) end
