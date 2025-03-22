---@meta CombatManager2

---@class CombatManager2

CombatManager2 = {}

function CombatManager2.onInit() end
function CombatManager2.onRoundStart(nCurrent) end
function CombatManager2.onTurnStart(nodeEntry) end
function CombatManager2.onTurnEnd(nodeEntry) end
function CombatManager2.parseResistances(sResistances) end
function CombatManager2.onNPCPostAdd(tCustom) end
function CombatManager2.onNPCPostAddGetHDStringHelper(nodeRecord) end
function CombatManager2.parseNPCPowers(rActor, tEffects) end
function CombatManager2.parseNPCPower(rActor, nodePower, tEffects, bAllowSpellDataOverride) end
function CombatManager2.parseNPCPowerBuildEffects(nodePower, tEffects) end
function CombatManager2.parseNPCPowerBuildValue(nodePower, rActor, bAllowSpellDataOverride) end
function CombatManager2.onVehiclePostAdd(tCustom) end
function CombatManager2.parseAttackLine(sLine) end
function CombatManager2.onNPCSummonPowerDataChanged(nodeRecord) end
function CombatManager2.resetInit() end
function CombatManager2.resetHealth(nodeCT, bLong) end
function CombatManager2.reduceExhaustion(nodeCT) end
function CombatManager2.clearExpiringEffects() end
function CombatManager2.rest(bLong) end
function CombatManager2.isInitSwapPlayerAllowed(nodeCT) end
function CombatManager2.rollInit(sType) end
function CombatManager2.rollEntryInit(nodeEntry) end
function CombatManager2.getEntryInitRecord(nodeEntry) end
function CombatManager2.rollRandomInit(tInit) end
function CombatManager2.calcBattleXP(nodeBattle) end
function CombatManager2.calcBattleCR(nodeBattle) end
function CombatManager2.addRightClickDiceToClauses(rRoll) end
