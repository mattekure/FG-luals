---@meta CombatDropManager

---@class CombatDropManager

CombatDropManager = {}

function CombatDropManager.onInit() end
function CombatDropManager.addStandardDragTypeDropCallbacks() end
function CombatDropManager.setLinkDropCallback(sClass, fn) end
function CombatDropManager.getLinkDropCallback(sClass) end
function CombatDropManager.hasLinkDropCallback(sClass) end
function CombatDropManager.onLinkDropEvent(sClass, tCustom) end
function CombatDropManager.setDragTypeDropCallback(sDragType, fn) end
function CombatDropManager.getDragTypeDropCallback(sDragType) end
function CombatDropManager.hasDragTypeDropCallback(sDragType) end
function CombatDropManager.onDragTypeDropEvent(sDragType, tCustom) end
function CombatDropManager.setActionDropCallback(fn) end
function CombatDropManager.getActionDropCallback() end
function CombatDropManager.registerLegacyDropCallback(fn) end
function CombatDropManager.onLegacyDropEvent(rSource, rTarget, draginfo) end
function CombatDropManager.handleAnyDrop(draginfo, sTargetPath) end
function CombatDropManager.handleLegacyDropOverride(draginfo) end
function CombatDropManager.handleLinkDropEvent(draginfo, sTargetPath) end
function CombatDropManager.handleDragTypeDropEvent(draginfo, sTargetPath) end
function CombatDropManager.handleActionDropEvent(draginfo, sTargetPath) end
function CombatDropManager.handleLegacyDropEvent(draginfo, sTargetPath) end
function CombatDropManager.onFactionDragTypeDrop(tCustom) end
function CombatDropManager.onTargetingDragTypeDrop(tCustom) end
function CombatDropManager.onEffectTargetingDragTypeDrop(tCustom) end
function CombatDropManager.onInitSwapDragTypeDrop(tCustom) end
