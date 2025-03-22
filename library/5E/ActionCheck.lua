---@meta ActionCheck

---@class ActionCheck

ActionCheck = {}

function ActionCheck.onInit() end
function ActionCheck.getRoll(rActor, sCheck, nTargetDC, bSecret) end
function ActionCheck.performRoll(draginfo, rActor, sCheck, nTargetDC, bSecretRoll) end
function ActionCheck.performPartySheetRoll(draginfo, rActor, sCheck) end
function ActionCheck.modRoll(rSource, rTarget, rRoll) end
function ActionCheck.onRoll(rSource, _, rRoll) end
function ActionCheck.setupRollBuild(rRoll, rActor, sCheck, nTargetDC) end
function ActionCheck.setupRollMod(rRoll) end
function ActionCheck.getAbilityRollMod(rRoll) end
function ActionCheck.applyEffectsToRollMod(rRoll, rSource, rTarget) end
function ActionCheck.applyStandardEffectsToRollMod(rRoll, rSource, _) end
function ActionCheck.applyExhaustionEffectsToRollMod(rRoll, rSource, _) end
function ActionCheck.applyReliableEffectsToRollMod(rRoll, rSource, _) end
function ActionCheck.finalizeRollMod(rRoll) end
