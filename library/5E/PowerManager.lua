---@meta PowerManager

---@class PowerManager

PowerManager = {}

function PowerManager.resetPowers(nodeCaster, bLong) end
function PowerManager.addPower(sClass, nodeSource, nodeCreature, sGroup) end
function PowerManager.getPCPowerActionOutputOrder(nodeAction) end
function PowerManager.getPCPowerAction(nodeAction, sSubRoll) end
function PowerManager.performPCPowerAction(draginfo, nodeAction, sSubRoll) end
function PowerManager.getPCPowerCastActionText(nodeAction) end
function PowerManager.getPCPowerDamageActionText(nodeAction) end
function PowerManager.getPCPowerHealActionText(nodeAction) end
function PowerManager.getPowerGroupRecord(rActor, nodePower, bNPCInnate) end
function PowerManager.evalAction(rActor, nodePower, rAction) end
function PowerManager.performAction(draginfo, rActor, rAction, nodePower) end
function PowerManager.parseAttacks(sPowerName, aWords) end
function PowerManager.parseDamagePhrase(aWords, i) end
function PowerManager.parseDamages(sPowerName, aWords, bMagic) end
function PowerManager.parseHeals(sPowerName, aWords) end
function PowerManager.parseSaves(sPowerName, aWords, bPC, bMagic) end
function PowerManager.helperParseSaveStandard(sPowerName, aWords, bPC, bMagic, nStart, nEnd, tSaves) end
function PowerManager.parseEffectsAdd(aWords, i, rEffect, effects) end
function PowerManager.parseEffects(sPowerName, aWords) end
function PowerManager.parsePower(tData) end
function PowerManager.helperParsePower(tData, tWords, tWordStats) end
function PowerManager.helperParsePowerConsolidation(tActions, tWordStats, sAbilityType, tNewActions) end
function PowerManager.cleanNPCPowerName(s) end
function PowerManager.getPowerActions(nodePower, bNPC) end
function PowerManager.parseNPCPower(nodePower, bAllowSpellDataOverride) end
function PowerManager.getNPCPowerVariables(nodePower) end
function PowerManager.parsePCPower(nodePower) end
