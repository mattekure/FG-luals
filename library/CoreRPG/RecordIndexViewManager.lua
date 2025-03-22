---@meta RecordIndexViewManager

---@class RecordIndexViewManager

RecordIndexViewManager = {}

function RecordIndexViewManager.getViewData() end
function RecordIndexViewManager.initViews() end
function RecordIndexViewManager.initRecordTypeView(sRecordType, sRecordView) end
function RecordIndexViewManager.getRecordTypeViews(sRecordType, bCreate) end
function RecordIndexViewManager.getRecordTypeView(sRecordType, sRecordView) end
function RecordIndexViewManager.setRecordViews(tViewData) end
function RecordIndexViewManager.setRecordTypeView(sRecordType, sRecordView, tView) end
function RecordIndexViewManager.getDisplayText(sRecordType, sRecordView, sKey) end
function RecordIndexViewManager.setDisplayText(sRecordType, sRecordView, sKey, s) end
function RecordIndexViewManager.setCustomFilterHandler(sKey, fn) end
function RecordIndexViewManager.getCustomFilterValue(sKey, nodeRecord, rFilter) end
function RecordIndexViewManager.setCustomColumnHandler(sKey, fn) end
function RecordIndexViewManager.getCustomColumnValue(sKey, nodeRecord, vDefault) end
function RecordIndexViewManager.setCustomGroupOutputHandler(sKey, fn) end
function RecordIndexViewManager.getCustomGroupOutput(sKey, vGroupValue) end
