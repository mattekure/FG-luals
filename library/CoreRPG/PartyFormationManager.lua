---@meta PartyFormationManager

---@class PartyFormationManager

PartyFormationManager = {}

function PartyFormationManager.onTabletopInit() end
function PartyFormationManager.onFormationSourceDelete(nodeSource) end
function PartyFormationManager.onFormationSourceTokenChange(nodeToken) end
function PartyFormationManager.onFormationEntryLinkUpdate(nodeLink) end
function PartyFormationManager.onFormationEntryLinkUpdateHelper(_, sRecord) end
function PartyFormationManager.onFormationEntryDeleted(nodeEntry) end
function PartyFormationManager.onFormationDataChange() end
function PartyFormationManager.registerPartyFormationWindow(wFormation) end
function PartyFormationManager.unregisterPartyFormationWindow() end
function PartyFormationManager.getSlotData(tSlotPos) end
function PartyFormationManager.onSlotDragStart(tSlotPos, draginfo) end
function PartyFormationManager.onSlotDrop(tSlotPos, draginfo) end
function PartyFormationManager.notifyPartyFormationSet(tSlotPos, sClass, sRecord) end
function PartyFormationManager.handlePartyFormationSet(msgOOB) end
function PartyFormationManager.setSlot(tSlotPos, sClassParam, sRecordParam) end
function PartyFormationManager.setSlotHelper(tSlotPosParam, sClassParam, sRecordParam) end
function PartyFormationManager.clearSlotHelper(tSlotPos) end
function PartyFormationManager.clearFormation() end
function PartyFormationManager.rotateFormationLeft() end
function PartyFormationManager.rotateFormationRight() end
function PartyFormationManager.fillFormation(sFillType) end
function PartyFormationManager.helperFillAssignSlots(tFactionData) end
function PartyFormationManager.buildDisplay() end
function PartyFormationManager.updateDisplay() end
function PartyFormationManager.updateDisplayControlHelper() end
function PartyFormationManager.updateDisplayPartyHelper() end
function PartyFormationManager.updateDisplaySlotHelper(tSlotPos, nodeEntry) end
function PartyFormationManager.clearDisplaySlotHelper(tSlotPos) end
function PartyFormationManager.updateDisplayFacingHelper() end
function PartyFormationManager.getFormationFacing() end
function PartyFormationManager.getFormation() end
