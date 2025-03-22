---@meta ActionsManager

---@class ActionsManager

ActionsManager = {}

function ActionsManager.onTabletopInit() end
function ActionsManager.initAction(sActionType) end
function ActionsManager.registerTargetingHandler(sActionType, callback) end
function ActionsManager.unregisterTargetingHandler(sActionType) end
function ActionsManager.registerModHandler(sActionType, callback) end
function ActionsManager.unregisterModHandler(sActionType) end
function ActionsManager.registerPostRollHandler(sActionType, callback) end
function ActionsManager.unregisterPostRollHandler(sActionType) end
function ActionsManager.registerResultHandler(sActionType, callback) end
function ActionsManager.unregisterResultHandler(sActionType) end
function ActionsManager.doesRollHaveDice(rRoll) end
function ActionsManager.performAction(draginfo, rActor, rRoll) end
function ActionsManager.performMultiAction(draginfo, rActor, sType, rRolls) end
function ActionsManager.actionHotkey(draginfo) end
function ActionsManager.actionDrop(draginfo, rTarget) end
function ActionsManager.actionDropHelper(draginfo, bResolveIfNoDice) end
function ActionsManager.actionDirect(rActor, sDragType, rRolls, tTargetGroups) end
function ActionsManager.getTargeting(rSource, rTarget, sDragType, rRolls) end
function ActionsManager.encodeActors(draginfo, rSource, aTargets) end
function ActionsManager.encodeActorActiveEffectNodes(draginfo, rActor, nActorIndex) end
function ActionsManager.decodeActors(draginfo) end
function ActionsManager.decodeActorActiveEffectNodes(draginfo, rActor, nActorIndex) end
function ActionsManager.encodeActionForDrag(draginfo, rSource, sType, rRolls) end
function ActionsManager.encodeRollForDrag(draginfo, i, rRoll) end
function ActionsManager.helperEncodeRollToDrag(draginfo, rRoll, nOrigDice) end
function ActionsManager.decodeActionFromDrag(draginfo, bFinal) end
function ActionsManager.decodeRollFromDrag(draginfo, i, bFinal) end
function ActionsManager.helperDecodeRollFromDrag(draginfo, bFinal) end
function ActionsManager.actionRoll(rSource, tTargetGroups, rRolls) end
function ActionsManager.applyModifiersAndRoll(rSource, vTarget, bMultiTarget, rRoll) end
function ActionsManager.applyModifiersToDragSlot(draginfo, i, rSource, bResolveIfNoDice) end
function ActionsManager.lockModifiers() end
function ActionsManager.unlockModifiers(bReset) end
function ActionsManager.applyModifiers(rSource, rTarget, rRoll, bSkipModStack) end
function ActionsManager.buildThrow(rSource, vTargets, rRoll, bMultiTarget) end
function ActionsManager.roll(rSource, vTargets, rRoll, bMultiTarget) end
function ActionsManager.onDiceLanded(draginfo) end
function ActionsManager.handleResolution(vRoll, rSource, aTargets) end
function ActionsManager.onChatDragStart(draginfo) end
function ActionsManager.resolveAction(rSource, rTarget, rRoll) end
function ActionsManager.createActionMessage(rSource, rRoll) end
function ActionsManager.total(rRoll) end
function ActionsManager.outputResult(bTower, rSource, rTarget, rMessageGM, rMessagePlayer) end
function ActionsManager.messageResult(_, rSource, rTarget, rMessageGM, rMessagePlayer) end
