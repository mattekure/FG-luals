---@meta ActionsManager2

---@class ActionsManager2

ActionsManager2 = {}

function ActionsManager2.setupD20RollBuild(sType, rActor, bSecret) end
function ActionsManager2.finalizeD20RollBuild(rRoll) end
function ActionsManager2.setupD20RollMod(rRoll) end
function ActionsManager2.applyAbilityEffectsToD20RollMod(rRoll, rSource, _) end
function ActionsManager2.finalizeEffectsToD20RollMod(rRoll) end
function ActionsManager2.finalizeD20RollMod(rRoll) end
function ActionsManager2.setupD20RollResolve(rRoll, rSource) end
function ActionsManager2.encodeDesktopMods(rRoll) end
function ActionsManager2.encodeAdvantage(rRoll, bADV, bDIS) end
function ActionsManager2.decodeAdvantage(rRoll) end
function ActionsManager2.applyGeneralRollModifiers(rRoll) end
function ActionsManager2.handleLuckTrait(rActor, rRoll) end
function ActionsManager2.handleReliable(_, rRoll) end
function ActionsManager2.handleHealerFeat(rActor, rRoll) end
function ActionsManager2.handleElvenAccuracyFeatMod(rRoll, rActor) end
function ActionsManager2.handleElvenAccuracyFeatResolve(rRoll) end
function ActionsManager2.helperHandleMax(rRoll, kDie) end
function ActionsManager2.helperHandleMinValue(rRoll, kDie, nMinValue) end
function ActionsManager2.helperHandleSingleReroll(rRoll, kDie, nTriggerLow) end
