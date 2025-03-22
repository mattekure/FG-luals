---@meta RecordManager

---@class RecordManager

RecordManager = {}

function RecordManager.onInit() end
function RecordManager.openRecordIndex(sRecordType) end
function RecordManager.openRecordWindow(sRecordType, v) end
function RecordManager.getRecordWindows(sRecordType) end
function RecordManager.findRecordByString(sRecordType, sField, sValue) end
function RecordManager.findRecordByStringI(sRecordType, sField, sValue) end
function RecordManager.findRecordByFilter(sRecordType, tFilters) end
function RecordManager.getRecordOptionsByString(sRecordType, sField, sValue, bSorted) end
function RecordManager.getRecordOptionsByStringI(sRecordType, sField, sValue, bSorted) end
function RecordManager.getRecordOptionsByFilter(sRecordType, tFilters, bSorted) end
function RecordManager.helperGetRecordOptionsByFilter(node, tData) end
function RecordManager.callForEachRecord(sRecordType, fn, ...) end
function RecordManager.callForEachCampaignRecord(sRecordType, fn, ...) end
function RecordManager.callForEachModuleRecord(sRecordType, sModule, fn, ...) end
function RecordManager.callForEachRecordByString(sRecordType, sField, sValue, fn, ...) end
function RecordManager.callForEachRecordByStringI(sRecordType, sField, sValue, fn, ...) end
function RecordManager.callForEachRecordByFilter(sRecordType, tFilters, fn, ...) end
function RecordManager.setRecordAddCallback(sRecordType, fn) end
function RecordManager.getRecordAddCallback(sRecordType) end
function RecordManager.hasRecordAddCallback(sRecordType) end
function RecordManager.onRecordAddEvent(sRecordType, tCustom) end
function RecordManager.addRecordByType(sRecordType, nodeList) end
function RecordManager.sendRecordAdd(sRecordType, sListPath) end
function RecordManager.handleRecordAdd(msgOOB) end
function RecordManager.performRevertByWindow(w) end
function RecordManager.performRevert(sRecordType, node) end
function RecordManager.handleRevertDialog(sResult, tData) end
