---@meta ModifierManager

---@class ModifierManager

ModifierManager = {}

function ModifierManager.onTabletopInit() end
function ModifierManager.onHotkeyModifier(draginfo) end
function ModifierManager.getModWindowPresets() end
function ModifierManager.addModWindowPresets(tPresets) end
function ModifierManager.addModWindowPresetButton(sCategory, sButtonID, nPosition) end
function ModifierManager.addKeyExclusionSets(tPresetExclusionSets) end
function ModifierManager.isLocked() end
function ModifierManager.lock() end
function ModifierManager.unlock(bReset) end
function ModifierManager.registerKeyCallback(sKey, fn) end
function ModifierManager.unregisterKeyCallback(sKey, fn) end
function ModifierManager.makeKeyCallback(sKey) end
function ModifierManager.getKey(sKey) end
function ModifierManager.getRawKey(sKey) end
function ModifierManager.setKey(sKey, bState) end
function ModifierManager.toggleKey(sKey) end
function ModifierManager.onKeyUpdate(sKey) end
