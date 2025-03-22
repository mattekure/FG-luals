---@meta AssetWindowManager

---@class AssetWindowManager

AssetWindowManager = {}

function AssetWindowManager.onTabletopInit() end
function AssetWindowManager.getAssetWindowData(w) end
function AssetWindowManager.setAssetWindowClassData(sClass, tData) end
function AssetWindowManager.getAssetWindowDataField(w, sField) end
function AssetWindowManager.setAssetWindowDataField(w, sField, v) end
function AssetWindowManager.isAssetWindow(w) end
function AssetWindowManager.clearAssetWindowData(w) end
function AssetWindowManager.getAssetWindowLastPathAndFilter(w) end
function AssetWindowManager.setAssetWindowLastPathAndFilter(w, sPath, sFilter) end
function AssetWindowManager.initAssetLinks() end
function AssetWindowManager.onMenuLinkDrag(w, draginfo) end
function AssetWindowManager.handleAssetLink(_, sPath) end
function AssetWindowManager.initAssetWindow(w) end
function AssetWindowManager.initControls(w) end
function AssetWindowManager.closeAssetWindow(w) end
function AssetWindowManager.getTypeFilter(w) end
function AssetWindowManager.onLayoutSizeChanged(w) end
function AssetWindowManager.onActivate(w, sAssetName, sAssetType) end
function AssetWindowManager.onHomeButtonPressed(w) end
function AssetWindowManager.onBackButtonPressed(w) end
function AssetWindowManager.onPagePrevButtonPressed(w) end
function AssetWindowManager.onPageNextButtonPressed(w) end
function AssetWindowManager.onTypeFilterSelected(w, s) end
function AssetWindowManager.onClearFilterButtonPressed(w) end
function AssetWindowManager.onViewPathSelected(w, s) end
function AssetWindowManager.onViewTypeButtonPressed(w) end
function AssetWindowManager.handleViewTypeUpdate(w) end
function AssetWindowManager.handleValueUpdate(w, bSkipHistory) end
function AssetWindowManager.helperUpdatePathView(w) end
function AssetWindowManager.helperUpdatePathViewList(w) end
function AssetWindowManager.helperUpdateTypeFilter(w) end
function AssetWindowManager.helperUpdatePageView(w) end
function AssetWindowManager.loadViewState(w) end
function AssetWindowManager.saveViewState(w) end
function AssetWindowManager.getViewState(w) end
function AssetWindowManager.setViewState(w, s, bSaveHistory) end
function AssetWindowManager.setViewLink(w, tLink, bSaveHistory) end
function AssetWindowManager.getViewData(w) end
function AssetWindowManager.getViewDescription(w) end
function AssetWindowManager.getHistory(w) end
function AssetWindowManager.setHistory(w, t) end
function AssetWindowManager.pushHistoryState(w) end
function AssetWindowManager.popHistoryState(w) end
function AssetWindowManager.synchViewToHistory(w) end
