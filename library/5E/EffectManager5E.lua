---@meta EffectManager5E

---@class EffectManager5E

EffectManager5E = {}

function EffectManager5E.onInit() end
function EffectManager5E.onEffectAddStart(rEffect) end
function EffectManager5E.onEffectAddIgnoreCheck(nodeCT, rEffect) end
function EffectManager5E.onEffectRollEncode(rRoll, rEffect) end
function EffectManager5E.onEffectTextEncode(rEffect) end
function EffectManager5E.onEffectTextDecode(sEffect, rEffect) end
function EffectManager5E.onEffectActorStartTurn(nodeActor, nodeEffect) end
function EffectManager5E.parseEffectComp(s) end
function EffectManager5E.rebuildParsedEffectComp(rComp) end
function EffectManager5E.removeEffectByType(nodeCT, sEffectType) end
function EffectManager5E.checkImmunities(rSource, rTarget, rEffect) end
function EffectManager5E.applyOngoingDamageAdjustment(nodeActor, nodeEffect, rEffectComp) end
function EffectManager5E.applyRecharge(nodeActor, nodeEffect, rEffectComp) end
function EffectManager5E.evalAbilityHelper(rActor, sEffectAbility) end
function EffectManager5E.evalEffect(rActor, s) end
function EffectManager5E.getEffectsByType(rActor, sEffectType, aFilter, rFilterActor, bTargetedOnly) end
function EffectManager5E.getEffectsBonusByType(rActor, aEffectType, bAddEmptyBonus, aFilter, rFilterActor, bTargetedOnly) end
function EffectManager5E.getEffectsBonus(rActor, aEffectType, bModOnly, aFilter, rFilterActor, bTargetedOnly) end
function EffectManager5E.hasEffectCondition(rActor, sEffect, rTarget) end
function EffectManager5E.hasEffect(rActor, sEffect, rTarget, bTargetedOnly, bIgnoreEffectTargets) end
function EffectManager5E.checkConditional(rActor, nodeEffect, aConditions, rTarget, aIgnore) end
function EffectManager5E.checkConditionalHelper(rActor, sEffect, rTarget, aIgnore) end
function EffectManager5E.encodeEffectForCT(rEffect) end
function EffectManager5E.decodeEffectFromCT(sEffect) end
