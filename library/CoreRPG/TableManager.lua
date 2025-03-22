---@meta TableManager

---@class TableManager

TableManager = {}

function TableManager.onInit() end
function TableManager.performRoll(draginfo, rActor, rTableRoll, bUseModStack) end
function TableManager.getTableDice(nodeTable) end
function TableManager.getTableDiceFromRowData(nodeTable) end
function TableManager.findTable(sTable) end
function TableManager.findColumn(nodeTable, sColumn) end
function TableManager.getResults(nodeTable, nTotal, nColumn) end
function TableManager.onTableRoll(rSource, rTarget, rRoll) end
function TableManager.processTableRoll(sCommand, sParams) end
function TableManager.createRows(nodeNewTable, nRows, nStep, bSpecial) end
