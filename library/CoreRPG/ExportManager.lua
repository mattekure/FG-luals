---@meta ExportManager

---@class ExportManager

ExportManager = {}

function ExportManager.onTabletopInit() end
function ExportManager.processExport() end
function ExportManager.retrieveExportNodes() end
function ExportManager.registerExportNode(rExport) end
function ExportManager.unregisterExportNode(rExport) end
function ExportManager.registerPreExportCallback(fn) end
function ExportManager.unregisterPreExportCallback(fn) end
function ExportManager.performPreExportCallback(...) end
function ExportManager.registerPostExportCallback(fn) end
function ExportManager.unregisterPostExportCallback(fn) end
function ExportManager.performPostExportCallback(...) end
function ExportManager.isFileNameValid(sFile) end
function ExportManager.performInit(wExport) end
function ExportManager.performClear(wExport) end
function ExportManager.isExportNode(sPath) end
function ExportManager.setExportNode(sPath, tNode) end
function ExportManager.addExportNode(nodeSource, sTargetPath, sExportType, sExportLabel, sExportListClass, sExportRootPath) end
function ExportManager.addExportRecordView(tRecordViewData) end
function ExportManager.hasExportLibraryEntry(sLibraryEntryTag) end
function ExportManager.addExportLibraryEntry(sLibraryEntryTag, tLibraryEntry) end
function ExportManager.addExportAssetRewrite(sSource, sTarget) end
function ExportManager.isExportAsset(sAsset) end
function ExportManager.performExport(wExport) end
function ExportManager.onRecordTypeListDrop(wExport, draginfo) end
function ExportManager.onAssetListDrop(wExport, draginfo) end
function ExportManager.callbackPreStoryExport(sRecordType) end
function ExportManager.callbackCleanLocks(sRecordType, tRecords) end
function ExportManager.cleanRecordLocks(sRecordType, node) end
function ExportManager.callbackRestoreLocks(sRecordType) end
function ExportManager.callbackReferenceImageCheck(sRecordType, tRecords) end
function ExportManager.checkManualImageRef(node) end
function ExportManager.checkRegularImageRef(node) end
function ExportManager.callbackCleanCharacterPortraitTokens(sRecordType, tRecords) end
function ExportManager.cleanCharacterPortraitTokens(node) end
function ExportManager.callbackRestoreCharacterPortraitTokens(sRecordType) end
function ExportManager.callbackGenerateReferenceKeywords(sRecordType) end
