---@meta RecordShareManager

---@class RecordShareManager

RecordShareManager = {}

function RecordShareManager.setRecordTypeCallback(sKey, fn) end
function RecordShareManager.getRecordTypeCallback(sKey) end
function RecordShareManager.setWindowClassCallback(sKey, fn) end
function RecordShareManager.getWindowClassCallback(sKey) end
function RecordShareManager.onShareButtonPressed(w) end
function RecordShareManager.onShareRecordType(sRecordType, node, tOutput) end
function RecordShareManager.onShareRecordTypeUnidentified(sRecordType, node, tOutput) end
function RecordShareManager.onShareRecordBasic(sLabel, node, tOutput) end
