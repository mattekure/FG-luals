---@meta WindowMenuManager

---@class WindowMenuManager

WindowMenuManager = {}

function WindowMenuManager.onTabletopInit() end
function WindowMenuManager.registerToolbarButtons() end
function WindowMenuManager.populate(w) end
function WindowMenuManager.buildToolbar(w) end
function WindowMenuManager.getCustomMenuData(w) end
function WindowMenuManager.checkButtons(t) end
function WindowMenuManager.onMenuLinkDrag(c, draginfo) end
function WindowMenuManager.onMenuLockInit(c) end
function WindowMenuManager.onMenuLockGetDefault(c) end
function WindowMenuManager.onMenuLockChanged(c) end
function WindowMenuManager.onMenuIDChanged(c) end
function WindowMenuManager.onMenuIdentifiedInit(c) end
function WindowMenuManager.performMenuClose(c) end
function WindowMenuManager.performMenuHelp(c) end
function WindowMenuManager.performMenuMinimize(c) end
function WindowMenuManager.onInitMenuModule(c) end
function WindowMenuManager.onInitMenuRevert(c) end
function WindowMenuManager.onDatabaseEventMenuRevert(c) end
function WindowMenuManager.performMenuRevert(c) end
function WindowMenuManager.updateMenuRevertDisplay(c) end
function WindowMenuManager.performMenuDuplicate(c) end
function WindowMenuManager.performMenuExport(c) end
function WindowMenuManager.onInitMenuShare(c) end
function WindowMenuManager.onDatabaseEventMenuShare(c) end
function WindowMenuManager.performMenuShare(c) end
function WindowMenuManager.updateMenuShareDisplay(c) end
function WindowMenuManager.performMenuChatOutput(c) end
function WindowMenuManager.performMenuChatSpeak(c) end
function WindowMenuManager.performMenuTokenFind(c) end
function WindowMenuManager.performMenuIDAll(c) end
function WindowMenuManager.performMenuSizeUp(c) end
function WindowMenuManager.performMenuSizeDown(c) end
function WindowMenuManager.performMenuBattleAddToQuickMap(c) end
function WindowMenuManager.performMenuBattleAddToTracker(c) end
function WindowMenuManager.performMenuParcelAddToTracker(c) end
function WindowMenuManager.initCharMinisheetSupport() end
function WindowMenuManager.onCharSizeButtonInit(c) end
function WindowMenuManager.onCharSizeButtonPressed(c) end
