---@meta ActionDamage

---@class ActionDamage

ActionDamage = {}

function ActionDamage.onInit() end
function ActionDamage.handleApplyDamage(msgOOB) end
function ActionDamage.notifyApplyDamage(rSource, rTarget, rRoll) end
function ActionDamage.getRoll(_, rAction) end
function ActionDamage.performRoll(draginfo, rActor, rAction) end
function ActionDamage.modDamage(rSource, rTarget, rRoll) end
function ActionDamage.onDamageRoll(_, rRoll) end
function ActionDamage.onDamage(rSource, rTarget, rRoll) end
function ActionDamage.setupModRoll(rRoll, rSource, rTarget) end
function ActionDamage.applyAbilityEffectsToModRoll(rRoll, rSource, _) end
function ActionDamage.applyDmgEffectsToModRoll(rRoll, rSource, rTarget) end
function ActionDamage.applyEffectModNotificationToModRoll(rRoll) end
function ActionDamage.applyDmgTypeEffectsToModRoll(rRoll, rSource, rTarget) end
function ActionDamage.applyCriticalToModRoll(rRoll, rSource, _) end
function ActionDamage.applyFixedDamageOptionToModRoll(rRoll, _, _) end
function ActionDamage.applyModifierKeysToModRoll(rRoll, _, _) end
function ActionDamage.finalizeModRoll(rRoll) end
function ActionDamage.applyTargetedDmgEffectsToDamageOutput(rDamageOutput, rSource, rTarget) end
function ActionDamage.applyTargetedDmgTypeEffectsToDamageOutput(rDamageOutput, rSource, rTarget) end
function ActionDamage.encodeDamageTypes(rRoll) end
function ActionDamage.decodeDamageTypes(rRoll, bFinal) end
function ActionDamage.getDamageStrings(clauses) end
function ActionDamage.getDamageTypesFromString(sDamageTypes) end
function ActionDamage.checkReductionTypeHelper(rMatch, aDmgType) end
function ActionDamage.checkReductionType(aReduction, aDmgType) end
function ActionDamage.checkNumericalReductionTypeHelper(rMatch, aDmgType, nLimit) end
function ActionDamage.checkNumericalReductionType(aReduction, aDmgType, nLimit) end
function ActionDamage.getDamageAdjust(rSource, rTarget, nDamage, rDamageOutput) end
function ActionDamage.decodeDamageText(nDamage, sDamageDesc) end
function ActionDamage.applyDamage(rSource, rTarget, rRoll) end
function ActionDamage.messageDamage(rSource, rTarget, rRoll) end
function ActionDamage.applyDamageState(rSource, rTarget, sAttack, sState) end
function ActionDamage.handleApplyDamageState(msgOOB) end
function ActionDamage.setDamageState(rSource, rTarget, sAttack, sState) end
function ActionDamage.getDamageState(rSource, rTarget, sAttack) end
