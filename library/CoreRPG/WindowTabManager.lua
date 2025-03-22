---@meta WindowTabManager

---@class WindowTabManager

WindowTabManager = {}

function WindowTabManager.onTabletopInit() end
function WindowTabManager.getTabTemplate(sClass) end
function WindowTabManager.setTabTemplate(sClass, s) end
function WindowTabManager.setDefaultTabTemplate(s) end
function WindowTabManager.getTabs(sClass) end
function WindowTabManager.getAllTabData() end
function WindowTabManager.registerTab(sClass, tData) end
function WindowTabManager.unregisterTab(sClass, sName) end
function WindowTabManager.getTabsFromWindow(w) end
function WindowTabManager.populate(w) end
function WindowTabManager.populateTabs(w) end
function WindowTabManager.getTabsData(w) end
function WindowTabManager.getTabDisplay(w, tData, bCreate) end
function WindowTabManager.getTabScrollbar(w, tData, bCreate) end
function WindowTabManager.createTabScrollbar(w, tData) end
function WindowTabManager.destroyTabDisplay(w, tData) end
function WindowTabManager.cleanupTabDisplay(w, tData1, tData2) end
function WindowTabManager.updateTabDisplay(w, tData, bCreate) end
function WindowTabManager.setTabDisplayVisible(w, tData, bVisible) end
function WindowTabManager.onOptionChanged(nodeOption) end
