---@meta RecordDataManager

---@class RecordDataManager

RecordDataManager = {}

function RecordDataManager.getRecordData() end
function RecordDataManager.isInitialized() end
function RecordDataManager.setInitialized(bState) end
function RecordDataManager.initialize() end
function RecordDataManager.initRecordTypes() end
function RecordDataManager.initRecordType(sRecordType) end
function RecordDataManager.initRecordTypeExport(sRecordType) end
function RecordDataManager.getRecordTypes() end
function RecordDataManager.getRecordTypesWithOption(sOption) end
function RecordDataManager.getRecordTypesWithoutOption(sOption) end
function RecordDataManager.getRecordTypeData(sRecordType) end
function RecordDataManager.setRecordTypeData(sRecordType, tRecordType) end
function RecordDataManager.overrideRecordData(tRecordTypes) end
function RecordDataManager.overrideRecordTypeData(sRecordType, tOverrides) end
function RecordDataManager.helperOverrideTable(tExisting, tOverrides) end
function RecordDataManager.isRecordType(sRecordType) end
function RecordDataManager.getDataPaths(sRecordType) end
function RecordDataManager.getDataPathRoot(sRecordType) end
function RecordDataManager.getAltDataPaths(sRecordType, bCreate) end
function RecordDataManager.addAltDataPath(sRecordType, sPath) end
function RecordDataManager.removeAltDataPath(sRecordType, sPath) end
function RecordDataManager.getRecordTypeOption(sRecordType, sKey) end
function RecordDataManager.setRecordTypeOption(sRecordType, sKey, bState) end
function RecordDataManager.getDisplayText(sRecordType, sKey) end
function RecordDataManager.setDisplayText(sRecordType, sKey, s) end
function RecordDataManager.getFieldData(sRecordType, sField, vDefault) end
function RecordDataManager.getCustomData(sRecordType, sKey, vDefault) end
function RecordDataManager.setCustomData(sRecordType, sKey, v) end
function RecordDataManager.isRecordTypeDisplayClass(sRecordType, sClass) end
function RecordDataManager.getAllRecordTypesFromDisplayClass(sClass) end
function RecordDataManager.getRecordTypeFromDisplayClass(sClass) end
function RecordDataManager.getRecordTypeDisplayClass(sRecordType, sPath) end
function RecordDataManager.getRecordTypeFromWindow(w) end
function RecordDataManager.getRecordTypeFromClassAndPath(sClass, sRecord) end
function RecordDataManager.getListPathFromRecordPath(sRecordPath) end
function RecordDataManager.getRecordTypeFromRecordPath(sRecordPath) end
function RecordDataManager.getRecordTypeFromListPath(sListPath) end
function RecordDataManager.getRecordTypeDisplayText(sRecordType) end
function RecordDataManager.getRecordTypeDisplayTextSingle(sRecordType) end
function RecordDataManager.getRecordTypeDisplayTextEmpty(sRecordType) end
function RecordDataManager.getRecordTypeDisplayTextEmptyUnidentified(sRecordType) end
function RecordDataManager.getRecordTypeDisplayTextExport(sRecordType) end
function RecordDataManager.isHidden(sRecordType) end
function RecordDataManager.setHidden(sRecordType, bState) end
function RecordDataManager.getDuplicateMode(sRecordType) end
function RecordDataManager.getLockMode(sRecordType) end
function RecordDataManager.getShareMode(sRecordType) end
function RecordDataManager.getTokenMode(sRecordType) end
function RecordDataManager.getPictureMode(sRecordType) end
function RecordDataManager.getCustomDieMode(sRecordType) end
function RecordDataManager.getExportMode(sRecordType) end
function RecordDataManager.getExportTag(sRecordType) end
function RecordDataManager.getIDMode(sRecordType) end
function RecordDataManager.isIdentifiable(sRecordType, nodeRecord) end
function RecordDataManager.getIDState(sRecordType, nodeRecord, bIgnoreHost) end
function RecordDataManager.getRecordDisplayName(nodeRecord, sClass, bPrefix) end
