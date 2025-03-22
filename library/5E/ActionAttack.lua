---@meta ActionAttack

---@class ActionAttack

ActionAttack = {}

function ActionAttack.onInit() end
function ActionAttack.handleApplyAttack(msgOOB) end
function ActionAttack.notifyApplyAttack(rSource, rTarget, rRoll) end
function ActionAttack.handleApplyHRFC(msgOOB) end
function ActionAttack.notifyApplyHRFC(sTable) end
function ActionAttack.onTargeting(_, aTargeting, rRolls) end
function ActionAttack.getRoll(rActor, rAction) end
function ActionAttack.performRoll(draginfo, rActor, rAction) end
function ActionAttack.performPartySheetVsRoll(_, rActor, rAction) end
function ActionAttack.modAttack(rSource, rTarget, rRoll) end
function ActionAttack.onAttack(rSource, rTarget, rRoll) end
function ActionAttack.onPreAttackResolve() end
function ActionAttack.onAttackResolve(rSource, rTarget, rRoll, rMessage) end
function ActionAttack.onPostAttackResolve(_, _, rRoll, _) end
function ActionAttack.setupAttackResolve(rRoll, rSource, rTarget) end
function ActionAttack.decodeAttackRoll(rRoll) end
function ActionAttack.checkAttackDefense(rRoll, rSource, rTarget) end
function ActionAttack.checkAttackResult(rRoll) end
function ActionAttack.applyAttack(rSource, rTarget, rRoll) end
function ActionAttack.setupRollBuild(rRoll, rActor, rAction) end
function ActionAttack.setupRollMod(rRoll) end
function ActionAttack.applyEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionAttack.applyStandardEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionAttack.applyExhaustionEffectsToRollMod(rRoll, rSource, _) end
function ActionAttack.applyReliableEffectsToRollMod(rRoll, rSource, _) end
function ActionAttack.applyDefenderEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionAttack.finalizeRollMod(rRoll) end
function ActionAttack.setCritState(rSource, rTarget) end
function ActionAttack.clearCritState(rSource) end
function ActionAttack.isCrit(rSource, rTarget) end
