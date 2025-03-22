---@meta ActionSave

---@class ActionSave

ActionSave = {}

function ActionSave.onInit() end
function ActionSave.handleApplySave(msgOOB) end
function ActionSave.notifyApplySave(rSource, rRoll) end
function ActionSave.getRoll(rActor, sSave) end
function ActionSave.performRoll(draginfo, rActor, sSave) end
function ActionSave.performPartySheetRoll(draginfo, rActor, sSave) end
function ActionSave.performVsRoll(draginfo, rActor, sSave, nTargetDC, bSecretRoll, rSource, bRemoveOnMiss, sSaveDesc) end
function ActionSave.modSave(rSource, rTarget, rRoll) end
function ActionSave.onSave(rSource, _, rRoll) end
function ActionSave.applySave(rSource, rOrigin, rAction, _) end
function ActionSave.setupRollBuild(rRoll, rActor, sSave) end
function ActionSave.setupRollBuildSystemShock(rRoll, rActor) end
function ActionSave.setupRollBuildDeath(rRoll, _) end
function ActionSave.setupRollBuildConcentration(rRoll, rActor, nTargetDC, tData) end
function ActionSave.setupRollMod(rRoll) end
function ActionSave.applyEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionSave.applyStandardEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionSave.applyExhaustionEffectsToRollMod(rRoll, rSource, _) end
function ActionSave.applyReliableEffectsToRollMod(rRoll, rSource, _) end
function ActionSave.finalizeRollMod(rRoll) end
function ActionSave.getSystemShockRoll(rActor) end
function ActionSave.performSystemShockRoll(draginfo, rActor) end
function ActionSave.onSystemShockRoll(rSource, _, rRoll) end
function ActionSave.notifyApplySystemShock(rSource, bSecret, rRoll) end
function ActionSave.handleApplySystemShock(msgOOB) end
function ActionSave.applySystemShockRoll(rSource, rAction) end
function ActionSave.onSystemShockResultRoll(rSource, _, rRoll) end
function ActionSave.getDeathRoll(rActor, bAuto) end
function ActionSave.performDeathRoll(draginfo, rActor, bAuto) end
function ActionSave.onDeathRoll(rSource, _, rRoll) end
function ActionSave.getConcentrationRoll(rActor, nTargetDC, tData) end
function ActionSave.performConcentrationRoll(draginfo, rActor, nTargetDC, tData) end
function ActionSave.onConcentrationRoll(rSource, _, rRoll) end
function ActionSave.hasConcentrationEffects(rSource) end
function ActionSave.getConcentrationEffects(rSource) end
function ActionSave.handleApplyConc(msgOOB) end
function ActionSave.notifyApplyConc(rSource, bSecret, rRoll) end
function ActionSave.applyConcentrationRoll(rSource, rAction) end
function ActionSave.expireConcentrationEffects(rSource) end
