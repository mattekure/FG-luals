---@meta DiceTowerManager

---@class DiceTowerManager

DiceTowerManager = {}

function DiceTowerManager.onTabletopInit() end
function DiceTowerManager.registerControl(c) end
function DiceTowerManager.activate() end
function DiceTowerManager.update() end
function DiceTowerManager.onMenuSelection(selection) end
function DiceTowerManager.encodeOOBFromDrag(draginfo, i, rSource) end
function DiceTowerManager.encodeOOBFromRoll(rRoll, rSource) end
function DiceTowerManager.decodeRollFromOOB(msgOOB) end
function DiceTowerManager.onHover(bOnControl) end
function DiceTowerManager.onDrop(draginfo) end
function DiceTowerManager.sendRoll(rRoll, rSource) end
function DiceTowerManager.handleDiceTower(msgOOB) end
