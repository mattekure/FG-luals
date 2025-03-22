---@meta ActionEffect

---@class ActionEffect

ActionEffect = {}

function ActionEffect.onTabletopInit() end
function ActionEffect.onHotkeyDrop(draginfo) end
function ActionEffect.getRoll(draginfo, rActor, rAction) end
function ActionEffect.performRoll(draginfo, rActor, rAction) end
function ActionEffect.onEffect(rSource, rTarget, rRoll) end
