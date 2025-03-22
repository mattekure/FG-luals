---@meta EffectManager

---@class EffectManager

EffectManager = {}

function EffectManager.onInit() end
function EffectManager.getEffectVarMap() end
function EffectManager.getEffectVar(sVar) end
function EffectManager.registerEffectVar(sVar, vData) end
function EffectManager.setCustomOnEffectAddStart(f) end
function EffectManager.setCustomOnEffectAddIgnoreCheck(f) end
function EffectManager.setCustomOnEffectAddEnd(f) end
function EffectManager.setCustomOnEffectExpire(f) end
function EffectManager.setCustomOnEffectDragDecode(f) end
function EffectManager.setCustomOnEffectRollEncode(f) end
function EffectManager.setCustomOnEffectRollDecode(f) end
function EffectManager.setCustomOnEffectTextEncode(f) end
function EffectManager.setCustomOnEffectTextDecode(f) end
function EffectManager.setCustomOnEffectActorStartTurn(f) end
function EffectManager.setCustomOnEffectActorEndTurn(f) end
function EffectManager.setCustomOnEffectStartTurn(f) end
function EffectManager.setCustomOnEffectEndTurn(f) end
function EffectManager.setInitAscending(b) end
function EffectManager.processEffects(nodeCurrentActor, nodeNewActor) end
function EffectManager.processEffect(nodeActor, nodeEffect, nCurrentInit, nNewInit, bProcessSpecialStart, bProcessSpecialEnd) end
function EffectManager.startDelayedUpdates() end
function EffectManager.endDelayedUpdates() end
function EffectManager.handleApplyEffect(msgOOB) end
function EffectManager.notifyApply(rEffect, vTargets) end
function EffectManager.handleExpireEffect(msgOOB) end
function EffectManager.notifyExpire(varEffect, nMatch, bImmediate) end
function EffectManager.handleRemoveEffect(msgOOB) end
function EffectManager.notifyRemove(vTargets, sPattern) end
function EffectManager.setEffect(nodeEffect, rEffect) end
function EffectManager.getEffect(nodeEffect) end
function EffectManager.onUntargetedDrop(rEffect) end
function EffectManager.onEffectSourceChanged(rEffect, nodeSource) end
function EffectManager.onCTEffectSourceChanged(nodeEffect, nodeSource) end
function EffectManager.message(sMsg, nodeCTEntry, bGMOnly, sUser) end
function EffectManager.getEffectString(nodeEffect, bPublicOnly) end
function EffectManager.getEffectsString(nodeCTEntry, bPublicOnly) end
function EffectManager.isGMEffect(nodeActor, nodeEffect) end
function EffectManager.removeEffect(nodeCTEntry, sEffPatternToRemove) end
function EffectManager.addEffect(sUser, sIdentity, nodeCT, rNewEffect, bShowMsg) end
function EffectManager.parseEffect(sEffect) end
function EffectManager.parseEffectCompSimple(s) end
function EffectManager.rebuildParsedEffect(aEffectComps) end
function EffectManager.expireEffect(nodeActor, nodeEffect, nExpireComp) end
function EffectManager.disableEffect(nodeActor, nodeEffect) end
function EffectManager.deactivateEffect(nodeActor, nodeEffect) end
function EffectManager.lock() end
function EffectManager.unlock() end
function EffectManager.setEffectSource(nodeEffect, nodeCT) end
function EffectManager.isTargetedEffect(nodeEffect) end
function EffectManager.isEffectTarget(nodeEffect, rTarget) end
function EffectManager.getEffectTargets(nodeEffect, bUseName) end
function EffectManager.addEffectTarget(vEffect, sTargetNode) end
function EffectManager.setEffectFactionTargets(nodeEffect, sFaction, bNegated) end
function EffectManager.clearEffectTargets(nodeEffect) end
function EffectManager.decodeEffectFromDrag(draginfo, rTarget) end
function EffectManager.encodeEffect(rAction) end
function EffectManager.decodeEffect(rRoll) end
function EffectManager.encodeEffectAsText(rEffect) end
function EffectManager.decodeEffectFromText(sEffect, bSecret) end
function EffectManager.onEffectFilter(w) end
function EffectManager.buildEffectOutput(v) end
function EffectManager.registerEffectCompType(sEffectCompType, tParams) end
function EffectManager.getEffectsByType(rActor, sEffectCompType, rFilterActor, bTargetedOnly) end
function EffectManager.hasEffect(rActor, sEffect, rTarget, bTargetedOnly, bCheckEffectTargets) end
function EffectManager.hasCondition(rActor, sEffect) end
function EffectManager.addCondition(rActor, sEffect) end
function EffectManager.removeCondition(rActor, sEffect) end
