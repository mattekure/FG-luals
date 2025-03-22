---@meta ActionHeal

---@class ActionHeal

ActionHeal = {}

function ActionHeal.onInit() end
function ActionHeal.getRoll(_, rAction) end
function ActionHeal.performRoll(draginfo, rActor, rAction) end
function ActionHeal.modHeal(rSource, _, rRoll) end
function ActionHeal.onHeal(rSource, rTarget, rRoll) end
function ActionHeal.encodeHealClauses(rRoll) end
function ActionHeal.decodeHealClauses(rRoll) end
