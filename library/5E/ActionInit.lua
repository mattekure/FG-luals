---@meta ActionInit

---@class ActionInit

ActionInit = {}

function ActionInit.onInit() end
function ActionInit.handleApplyInit(msgOOB) end
function ActionInit.notifyApplyInit(rSource, nTotal) end
function ActionInit.getRoll(rActor, bSecret) end
function ActionInit.performRoll(draginfo, rActor, bSecretRoll) end
function ActionInit.modRoll(rSource, rTarget, rRoll) end
function ActionInit.onResolve(rSource, rTarget, rRoll) end
function ActionInit.setupRollBuild(rRoll, rActor) end
function ActionInit.getEffectAdjustments(rActor) end
