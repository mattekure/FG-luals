---@meta ActionSkill

---@class ActionSkill

ActionSkill = {}

function ActionSkill.onInit() end
function ActionSkill.getRoll(rActor, nodeSkill) end
function ActionSkill.performRoll(draginfo, rActor, nodeSkill, nTargetDC, bSecretRoll) end
function ActionSkill.performPartySheetRoll(draginfo, rActor, sSkill) end
function ActionSkill.getUnlistedRoll(rActor, sSkill) end
function ActionSkill.getNPCRoll(rActor, sSkill, nSkill) end
function ActionSkill.performNPCRoll(draginfo, rActor, sSkill, nSkill) end
function ActionSkill.modRoll(rSource, rTarget, rRoll) end
function ActionSkill.onRoll(rSource, rTarget, rRoll) end
function ActionSkill.setupRollBuildFromNodePC(rRoll, rActor, nodeSkill) end
function ActionSkill.setupRollBuildFromNamePC(rRoll, rActor, sSkill) end
function ActionSkill.setupRollBuildFromNameNPC(rRoll, _, sSkill, nSkill) end
