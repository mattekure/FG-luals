---@meta CombatFormationManager

---@class CombatFormationManager

CombatFormationManager = {}

function CombatFormationManager.getFactionFormationRecords(sFaction) end
function CombatFormationManager.fillFactionFormationSlots(sFaction, tActors, sFillType) end
function CombatFormationManager.getFactionColFillRangeDefault(sFaction) end
function CombatFormationManager.buildSlotsUsed(tActors) end
function CombatFormationManager.fillSlotsByColumn3X(tActors, tSlotsUsed, nFillFacing, nColFillRange) end
function CombatFormationManager.fillSlotsByColumn2X(tActors, tSlotsUsed, nFillFacing, nColFillRange) end
function CombatFormationManager.fillSlotsByColumn1X(tActors, tSlotsUsed, nFillFacing, nColFillRange) end
function CombatFormationManager.fillSlotsBySpiral(tActors, tSlotsUsed, nFillFacing) end
function CombatFormationManager.getNextOpenSpiralSlot(tSlotPos, tSlotsUsed, nFillFacing) end
function CombatFormationManager.getStartColumnFillSlot(nColumns, nCount, nFillFacing, nColFillRange) end
function CombatFormationManager.getNextOpenColumnx1FillSlot(tSlotPos, tSlotsUsed, nFillFacing, nColFillRange) end
function CombatFormationManager.getNextOpenColumnx2FillSlot(tSlotPos, tSlotsUsed, nFillFacing, nColFillRange) end
function CombatFormationManager.getNextOpenColumnx3FillSlot(tSlotPos, tSlotsUsed, nFillFacing, nColFillRange) end
