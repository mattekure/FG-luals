---@meta ActorManager5E

---@class ActorManager5E

ActorManager5E = {}

function ActorManager5E.onInit() end
function ActorManager5E.initActorHealth() end
function ActorManager5E.getWoundPercent(v) end
function ActorManager5E.getPCSheetWoundColor(nodePC) end
function ActorManager5E.getAbilityEffectsBonus(rActor, sAbility) end
function ActorManager5E.getAbilityScore(rActor, sAbility) end
function ActorManager5E.getClassLevel(nodeActor, sValue) end
function ActorManager5E.getAbilityBonus(rActor, sAbility) end
function ActorManager5E.getListRecordByName(nodeActor, sList, s) end
function ActorManager5E.getListRecordByName2024(nodeActor, sList, s) end
function ActorManager5E.getListRecordByName2014(nodeActor, sList, s) end
function ActorManager5E.hasRollTrait(rActor, s) end
function ActorManager5E.hasRollFeature(rActor, s) end
function ActorManager5E.hasRollFeat(rActor, s) end
function ActorManager5E.hasRollFeat2024(rActor, s) end
function ActorManager5E.hasRollFeat2014(rActor, s) end
function ActorManager5E.hasTrait(rActor, s) end
function ActorManager5E.hasFeature(rActor, s) end
function ActorManager5E.hasFeat(rActor, s) end
function ActorManager5E.hasFeat2024(rActor, s) end
function ActorManager5E.hasFeat2014(rActor, s) end
function ActorManager5E.hasPCTrait(nodeActor, s) end
function ActorManager5E.hasNPCTrait(nodeActor, s) end
function ActorManager5E.hasPCFeature(nodeActor, s) end
function ActorManager5E.hasNPCFeature(nodeActor, s) end
function ActorManager5E.hasPCFeat(nodeActor, s) end
function ActorManager5E.hasNPCFeat(nodeActor, s) end
function ActorManager5E.hasPCFeat2024(nodeActor, s) end
function ActorManager5E.hasNPCFeat2024(nodeActor, s) end
function ActorManager5E.hasPCFeat2014(nodeActor, s) end
function ActorManager5E.hasNPCFeat2014(nodeActor, s) end
function ActorManager5E.getSave(rActor, sSave) end
function ActorManager5E.getCheck(rActor, sCheck, sSkill) end
function ActorManager5E.getDefenseAdvantage(rAttacker, rDefender, aAttackFilter) end
function ActorManager5E.getDefenseValue(rAttacker, rDefender, rRoll) end
function ActorManager5E.getDamageThreshold(rActor) end
function ActorManager5E.getMishapThreshold(rActor) end
function ActorManager5E.getDamageVulnerabilities(rActor, rSource) end
function ActorManager5E.getDamageResistances(rActor, rSource) end
function ActorManager5E.getDamageImmunities(rActor, rSource) end
function ActorManager5E.parseDamageVulnResistImmuneHelper(rActor, sField) end
function ActorManager5E.getDamageVulnResistImmuneEffectHelper(rActor, sEffectType, rSource) end
function ActorManager5E.getConditionImmunities(rActor, rSource) end
function ActorManager5E.getNonPCActorConditionImmunitiesHelper(rActor) end
