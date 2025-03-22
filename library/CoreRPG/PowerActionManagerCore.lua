---@meta PowerActionManagerCore

---@class PowerActionManagerCore

PowerActionManagerCore = {}

function PowerActionManagerCore.registerActionType(sType, tTypeData) end
function PowerActionManagerCore.overrideActionType(sType, tTypeData) end
function PowerActionManagerCore.calcNextActionTypeOrder() end
function PowerActionManagerCore.getSortedActionTypes() end
function PowerActionManagerCore.sortfuncActionTypes(sType1, sType2) end
function PowerActionManagerCore.getActionType(node) end
function PowerActionManagerCore.resolveActionTypeData(node, tData) end
function PowerActionManagerCore.callActionTypeFunction(sFunction, node, tData) end
function PowerActionManagerCore.getActionButtonIcons(node, tData) end
function PowerActionManagerCore.getActionText(node, tData) end
function PowerActionManagerCore.getActionTooltip(node, tData) end
function PowerActionManagerCore.performAction(draginfo, node, tData) end
function PowerActionManagerCore.getActionEffectTooltip(node, tData) end
function PowerActionManagerCore.getActionEffectText(node, tData) end
