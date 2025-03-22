---@meta CharBastionManager

---@class CharBastionManager

CharBastionManager = {}

function CharBastionManager.onInit() end
function CharBastionManager.onOptionChanged() end
function CharBastionManager.openBastionLog() end
function CharBastionManager.advanceTurn() end
function CharBastionManager.advanceBastionLog() end
function CharBastionManager.advanceFacilityTurns(nodeBastion) end
function CharBastionManager.onOrderButtonDrag(draginfo, sOrderTag) end
function CharBastionManager.onPartyFacilityDrop(nodeFacility, draginfo) end
function CharBastionManager.clearFacilityOrder(nodeFacility) end
function CharBastionManager.clearBastionLog() end
function CharBastionManager.resetBastionTurns() end
