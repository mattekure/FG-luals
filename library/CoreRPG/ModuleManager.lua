---@meta ModuleManager

---@class ModuleManager

ModuleManager = {}

function ModuleManager.onTabletopInit() end
function ModuleManager.getAllModuleInfo() end
function ModuleManager.getModuleInfo(sModule) end
function ModuleManager.setModuleInfo(sModule, tInfo) end
function ModuleManager.isModuleInstalled(sModule) end
function ModuleManager.getModuleDisplayName(sModule) end
function ModuleManager.getAllLoadedModuleInfo() end
function ModuleManager.getLoadedModuleInfo(sModule) end
function ModuleManager.setLoadedModuleInfo(sModule, tInfo, bSkipUpdateLibrary) end
function ModuleManager.isModuleLoaded(sModule) end
function ModuleManager.getAllAuxBookInfo() end
function ModuleManager.getAuxBookInfo(sModule) end
function ModuleManager.setAuxBookInfo(sModule, tInfo) end
function ModuleManager.getLibraryCategories() end
function ModuleManager.setLibraryCategories(tCategories) end
function ModuleManager.setLibraryCategory(sCategory, bSkipUpdateLibrary) end
function ModuleManager.isLibraryCategory(sCategory) end
function ModuleManager.initModuleData() end
function ModuleManager.onModuleLoad(sModule) end
function ModuleManager.onModuleUnload(sModule) end
function ModuleManager.onModuleAdded(sModule) end
function ModuleManager.onModuleUpdated(sModule) end
function ModuleManager.onModuleRemoved(sModule) end
function ModuleManager.rebuildLoadedCategories() end
function ModuleManager.getLibraryWindow() end
function ModuleManager.initLibraryWindow(wLibrary) end
function ModuleManager.onLibraryModuleLoad(sModule, tInfo, wLibrary) end
function ModuleManager.onLibraryModuleUnload(sModule, wLibrary) end
function ModuleManager.onLibraryAuxBookAdded(sModule, tInfo, wLibrary) end
function ModuleManager.onLibraryAuxBookRemoved(sModule, wLibrary) end
function ModuleManager.onLibraryCategoryAdded(sCategory, wLibrary) end
function ModuleManager.onLibraryCategoryRemoved(sCategory, wLibrary) end
function ModuleManager.onLibraryModuleActivate(sModule) end
function ModuleManager.onLibraryAuxBookActivate(sModule) end
function ModuleManager.getModuleActivationWindow() end
function ModuleManager.onModuleActivationAdded() end
function ModuleManager.onModuleActivationUpdated(sModule) end
function ModuleManager.onModuleActivationRemoved() end
function ModuleManager.handleRecordModulesLoad(tRecordPaths, fCallback, vCustom) end
function ModuleManager.checkRecordModules(tRecordPaths) end
function ModuleManager.performRevert(sModule) end
function ModuleManager.handleRevertDialog(sResult, tData) end
