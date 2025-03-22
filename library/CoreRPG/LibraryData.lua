---@meta LibraryData

---@class LibraryData

LibraryData = {}

function LibraryData.getCharListLink() end
function LibraryData.getStoryDisplayClass(node) end
function LibraryData.getSoundsetType(node) end
function LibraryData.getRecordData() end
function LibraryData.getRecordViewData() end
function LibraryData.getRecordTypes() end
function LibraryData.isRecordType(sRecordType) end
function LibraryData.getRecordTypeInfo(sRecordType) end
function LibraryData.setRecordTypeInfo(sRecordType, tRecordType) end
function LibraryData.overrideRecordTypes(tRecordTypes) end
function LibraryData.overrideRecordTypeInfo(sRecordType, tOverrides) end
function LibraryData.getRootMapping(sRecordType) end
function LibraryData.getMappings(sRecordType) end
function LibraryData.getCustomData(sRecordType, sKey) end
function LibraryData.setCustomData(sRecordType, sKey, v) end
function LibraryData.getRecordDisplayClass(sRecordType, sPath) end
function LibraryData.isRecordDisplayClass(sRecordType, sClass) end
function LibraryData.getRecordTypeFromDisplayClass(sClass) end
function LibraryData.getAllRecordTypesFromDisplayClass(sClass) end
function LibraryData.getRecordTypeFromWindow(w) end
function LibraryData.getRecordTypeFromClassAndPath(sClass, sRecord) end
function LibraryData.getRecordTypeFromPath(sPath) end
function LibraryData.getRecordTypeFromRecordPath(sRecord) end
function LibraryData.getDisplayText(sRecordType) end
function LibraryData.getSingleDisplayText(sRecordType) end
function LibraryData.getEmptyNameText(sRecordType) end
function LibraryData.getEmptyUnidentifiedNameText(sRecordType) end
function LibraryData.isHidden(sRecordType) end
function LibraryData.setHidden(sRecordType, bHidden) end
function LibraryData.getLockMode(sRecordType) end
function LibraryData.getShareMode(sRecordType) end
function LibraryData.getIDMode(sRecordType) end
function LibraryData.isIdentifiable(sRecordType, nodeRecord) end
function LibraryData.getIDState(sRecordType, nodeRecord, bIgnoreHost) end
function LibraryData.getIndexDisplayClass(sRecordType) end
function LibraryData.getIndexButtons(sRecordType) end
function LibraryData.addIndexButton(sRecordType, sTemplate) end
function LibraryData.removeIndexButton(sRecordType, sTemplate) end
function LibraryData.getEditButtons(sRecordType) end
function LibraryData.getCustomFilters(sRecordType) end
function LibraryData.getCategoryMode(sRecordType) end
function LibraryData.allowEdit(sRecordType) end
function LibraryData.initRecordView(sRecordType, sRecordView) end
function LibraryData.getRecordViews(sRecordType) end
function LibraryData.getRecordView(sRecordType, sRecordView) end
function LibraryData.setRecordViews(tRecordViews) end
function LibraryData.setRecordView(sRecordType, sRecordView, tRecordViewData) end
function LibraryData.setListView(sRecordType, sRecordView, tRecordViewData) end
function LibraryData.setCustomFilterHandler(sKey, fn) end
function LibraryData.getCustomFilterValue(sKey, nodeRecord, rFilter) end
function LibraryData.setCustomColumnHandler(sKey, fn) end
function LibraryData.getCustomColumnValue(sKey, nodeRecord, vDefault) end
function LibraryData.setCustomGroupOutputHandler(sKey, fn) end
function LibraryData.getCustomGroupOutput(sKey, vGroupValue) end
