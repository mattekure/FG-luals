---@meta CampaignDataManager

---@class CampaignDataManager

CampaignDataManager = {}

function CampaignDataManager.onTabletopInit() end
function CampaignDataManager.resetCharRecordLocks() end
function CampaignDataManager.resetCharRecordLock(nodeChar) end
function CampaignDataManager.handleFileDrop(sTarget, draginfo) end
function CampaignDataManager.handleImageAssetDrop(sTarget, draginfo) end
function CampaignDataManager.handleDrop(sTarget, draginfo) end
function CampaignDataManager.handleStandardDrop(sTarget, draginfo) end
function CampaignDataManager.importImageFilePath(sPath, bOpen) end
function CampaignDataManager.importCampaignImageAssets() end
function CampaignDataManager.createImageRecordFromAsset(sAsset, bOpen) end
function CampaignDataManager.duplicateRecordWindow(w) end
function CampaignDataManager.duplicateRecord(sRecordType, sClass, sRecord, bOpen) end
function CampaignDataManager.importChar() end
function CampaignDataManager.importNPC() end
function CampaignDataManager.importImage() end
function CampaignDataManager.onImportFileSelection(result, vPath) end
function CampaignDataManager.onImport(node) end
function CampaignDataManager.exportRecordWindow(w) end
function CampaignDataManager.exportChar(nodeChar) end
function CampaignDataManager.exportNPC(nodeNPC) end
function CampaignDataManager.onExportFileSelection(sResult, sFilePath) end
function CampaignDataManager.onExport(node, _, _, bList) end
function CampaignDataManager.addPregenChar(nodeSource) end
function CampaignDataManager.addPregenCharCore(nodeSource) end
function CampaignDataManager.addPregenCharLockListEntries(nodeTarget, sListPath) end
function CampaignDataManager.convertRndEncExprToEncCount(nodeNPC) end
function CampaignDataManager.generateEncounterFromRandom(nodeSource) end
function CampaignDataManager.setCharPortrait(nodeChar, sAsset) end
