---@meta DesktopManager

---@class DesktopManager

DesktopManager = {}

function DesktopManager.onTabletopInit() end
function DesktopManager.onTabletopClose() end
function DesktopManager.getSidebarDockWidth() end
function DesktopManager.getSidebarDockWidthWithOffsets() end
function DesktopManager.getSidebarDockIconWidth() end
function DesktopManager.setSidebarDockOffset(l, t, r, b) end
function DesktopManager.setSidebarVisibilityButtonOffset(l, t, r, b) end
function DesktopManager.getSidebarDockCategorySize() end
function DesktopManager.getSidebarDockCategoryOffset() end
function DesktopManager.getSidebarDockCategoryPadding() end
function DesktopManager.getSidebarDockCategoryTextOffset() end
function DesktopManager.setSidebarDockCategorySize(w, h) end
function DesktopManager.setSidebarDockCategoryOffset(l, t, r, b) end
function DesktopManager.setSidebarDockCategoryPadding(w, h) end
function DesktopManager.setSidebarDockCategoryTextOffset(n) end
function DesktopManager.getSidebarDockButtonSize() end
function DesktopManager.getSidebarDockButtonOffset() end
function DesktopManager.getSidebarDockButtonIconPadding() end
function DesktopManager.getSidebarDockButtonTextPadding() end
function DesktopManager.setSidebarDockButtonSize(w, h) end
function DesktopManager.setSidebarDockButtonOffset(l, t, r, b) end
function DesktopManager.setSidebarDockButtonIconPadding(w, h) end
function DesktopManager.setSidebarDockButtonTextPadding(w, h) end
function DesktopManager.isInitialized() end
function DesktopManager.initializeSidebar() end
function DesktopManager.onSidebarSizeChanged() end
function DesktopManager.getSidebarWindow() end
function DesktopManager.getSidebarAnchorWindow() end
function DesktopManager.updateSidebarAnchorWindowPosition() end
function DesktopManager.configureSidebarTheming() end
function DesktopManager.rebuildSidebar() end
function DesktopManager.sortSidebarAlphaWithinCategory(a,b) end
function DesktopManager.getSidebarLibraryButtons() end
function DesktopManager.getSidebarToolButtons() end
function DesktopManager.registerSidebarToolButton(tButton, vInsertAt) end
function DesktopManager.removeSidebarToolButton(sClass) end
function DesktopManager.getSidebarDefaultCategory() end
function DesktopManager.getSidebarDefaultCategoryByRecordType(sRecordType) end
function DesktopManager.getSidebarDefaultCategories() end
function DesktopManager.getSidebarLibraryCategory() end
function DesktopManager.getSidebarToolCategory() end
function DesktopManager.loadSidebarState() end
function DesktopManager.saveSidebarState() end
function DesktopManager.checkSidebarDataVersionState() end
function DesktopManager.setSidebarDataVersionState() end
function DesktopManager.loadSidebarVisibilityState() end
function DesktopManager.saveSidebarVisibilityState() end
function DesktopManager.getSidebarVisibilityState() end
function DesktopManager.setSidebarVisibilityState(nValue) end
function DesktopManager.loadSidebarCategoryState() end
function DesktopManager.saveSidebarCategoryState() end
function DesktopManager.getSidebarCategoryState(sCategory) end
function DesktopManager.toggleSidebarCategoryState(sCategory) end
function DesktopManager.toggleIndex(sRecordType) end
function DesktopManager.getListLink(sRecordType) end
function DesktopManager.addDataModuleSets(aDataModulesSetsValue) end
function DesktopManager.addDataModuleSet(sDataModuleSetNameValue, aDataModulesValue) end
function DesktopManager.getDataModuleSets() end
