---@meta PowerManagerCore

---@class PowerManagerCore

PowerManagerCore = {}

function PowerManagerCore.registerPowerActionsPath(s) end
function PowerManagerCore.getPowerActionsPath() end
function PowerManagerCore.registerPowerHandlers(tPowerItemHandlers) end
function PowerManagerCore.getPowerActorNode(node) end
function PowerManagerCore.usePower(node) end
function PowerManagerCore.parsePower(node) end
function PowerManagerCore.updatePowerDisplay(w) end
function PowerManagerCore.getPowerName(node) end
function PowerManagerCore.getPowerOutput(node) end
function PowerManagerCore.performDefaultPowerUse(node) end
function PowerManagerCore.handleDefaultPowerInitParse(node) end
function PowerManagerCore.registerDefaultPowerMenu(w) end
function PowerManagerCore.onDefaultPowerMenuSelection(w, selection, subselection) end
function PowerManagerCore.getDefaultPowerMenuBaseIndex(tActionTypes) end
function PowerManagerCore.createPowerAction(w, sType) end
