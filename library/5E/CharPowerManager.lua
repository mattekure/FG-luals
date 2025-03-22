---@meta CharPowerManager

---@class CharPowerManager

CharPowerManager = {}

function CharPowerManager.addPowerDB(nodeChar, sClass, sRecord, sGroup) end
function CharPowerManager.resolveSpellDropPowerGroup(nodeChar, sGroup) end
function CharPowerManager.arePowerGroupUpdatesPaused(nodeChar) end
function CharPowerManager.pausePowerGroupUpdates(nodeChar) end
function CharPowerManager.resumePowerGroupUpdates(nodeChar) end
function CharPowerManager.arePowerUsageUpdatesPaused(nodeChar) end
function CharPowerManager.pausePowerUsageUpdates(nodeChar) end
function CharPowerManager.resumePowerUsageUpdates(nodeChar) end
