---@meta ActionPower

---@class ActionPower

ActionPower = {}

function ActionPower.onInit() end
function ActionPower.handleApplySaveVs(msgOOB) end
function ActionPower.notifyApplySaveVs(rSource, rTarget, bSecret, sDesc, nDC, bRemoveOnMiss) end
function ActionPower.onPowerTargeting(_, aTargeting, rRolls) end
function ActionPower.getPowerCastRoll(_, rAction) end
function ActionPower.getSaveVsRoll(rActor, rAction) end
function ActionPower.performSaveVsRoll(draginfo, rActor, rAction) end
function ActionPower.modCastSave(_, _, rRoll) end
function ActionPower.onPowerCast(rSource, rTarget, rRoll) end
function ActionPower.onCastSave(rSource, rTarget, rRoll) end
function ActionPower.onPowerSave(rSource, rTarget, rRoll) end
