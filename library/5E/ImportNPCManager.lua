---@meta ImportNPCManager

---@class ImportNPCManager

ImportNPCManager = {}

function ImportNPCManager.onTabletopInit() end
function ImportNPCManager.registerImportModes() end
function ImportNPCManager.performImport(w) end
function ImportNPCManager.import2024(sStats, sDesc) end
function ImportNPCManager.importDNDB2024(sStats, sDesc) end
function ImportNPCManager.import2022(sStats, sDesc) end
function ImportNPCManager.importHelperName(tImportState) end
function ImportNPCManager.importHelperVersion(tImportState, version) end
function ImportNPCManager.importHelperSizeTypeAlignment(tImportState) end
function ImportNPCManager.importHelperACHPSpeed2024(tImportState) end
function ImportNPCManager.importHelperACHPSpeed2014(tImportState) end
function ImportNPCManager.importHelperAbilities2024(tImportState) end
function ImportNPCManager.importHelperAbilitiesDNDB2024(tImportState) end
function ImportNPCManager.importHelperAbilities2014(tImportState) end
function ImportNPCManager.importHelperOptionalFields2024(tImportState) end
function ImportNPCManager.importHelperOptionalFields2014(tImportState) end
function ImportNPCManager.importHelperActions(tImportState) end
function ImportNPCManager.isActionHeading(s) end
function ImportNPCManager.initImportState(sStatBlock, sDesc) end
function ImportNPCManager.nextImportLine(tImportState, nAdvance) end
function ImportNPCManager.addStatOutput(tImportState, s) end
function ImportNPCManager.finalizeDescription(tImportState) end
function ImportNPCManager.setActionMode(tImportState, s) end
function ImportNPCManager.setActionData(tImportState, sName, sDesc) end
function ImportNPCManager.appendActionDesc(tImportState, s) end
function ImportNPCManager.finalizeAction(tImportState) end
