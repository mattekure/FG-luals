---@meta ListManager

---@class ListManager

ListManager = {}

function ListManager.onInit() end
function ListManager.onTabletopInit() end
function ListManager.onHotkeyRecordView(draginfo) end
function ListManager.isSavageWorlds() end
function ListManager.initSimpleListFromNode(w) end
function ListManager.helperBuildSimpleListRecordFromNode(nodeMain) end
function ListManager.initSimpleListFromRecord(w, rListParam) end
function ListManager.toggleRecordView(sRecordType, sRecordView, sRecordPath) end
function ListManager.toggleRecordViewFromRecord(tList, sRecordPath) end
function ListManager.onDragRecordView(draginfo, sRecordType, sRecordView, sRecordPath) end
function ListManager.onHotkeyRecordView(draginfo) end
function ListManager.initViewFromNode(w) end
function ListManager.helperBuildViewRecordFromNode(nodeMain) end
function ListManager.initViewFromRecord(w, rListParam) end
function ListManager.helperResolveViewRecord(rListParam) end
function ListManager.setCustomViewEntryControlHandler(fn) end
function ListManager.getCustomViewEntryControlHandler() end
function ListManager.createViewEntryControl(wEntry, nColumn, rColumn) end
function ListManager.populateWindow(w) end
function ListManager.helperSetupTitle(w, rInfo) end
function ListManager.helperSetupNotes(w, rInfo) end
function ListManager.helperSetupSource(w, rInfo) end
function ListManager.helperSetupData(w, rInfo) end
function ListManager.helperSetupDataBySource(rInfo, nodeSource) end
function ListManager.helperSetupDataByType(rInfo, nodeSource) end
function ListManager.helperSetupDataByList(rInfo) end
function ListManager.helperAddDataRecord(rInfo, node) end
function ListManager.helperAddDataRecordFilterCheck(rInfo, node) end
function ListManager.helperSetupHeaders(w, rInfo) end
function ListManager.helperSetupSortOrder(rInfo) end
function ListManager.helperSetupStartSize(w, rInfo) end
function ListManager.hasWindowInfo(w) end
function ListManager.getWindowInfo(w) end
function ListManager.setWindowInfo(w, rInfo) end
function ListManager.initCustomList(w) end
function ListManager.onCloseWindow(w) end
function ListManager.onCategoryChanged(w, sCategory) end
function ListManager.onFilterChanged(w, sFilter) end
function ListManager.onGroupToggle(w, sGroup) end
function ListManager.getSourceWindow(w) end
function ListManager.getListWindow(w) end
function ListManager.getPagingWindow(w) end
function ListManager.getNotesWindow(w) end
function ListManager.refreshDisplayList(w, bResetScroll) end
function ListManager.helperSaveScrollPosition(w, bResetScroll) end
function ListManager.helperRestoreScrollPosition(w) end
function ListManager.helperGetRecords(w) end
function ListManager.helperIsFilteredRecord(w, v) end
function ListManager.helperClearDisplayList(w) end
function ListManager.helperAddDisplayListItem(w, v) end
function ListManager.helperApplyDisplayListSort(w) end
function ListManager.helperSortFilteredRecords(w, tFilteredRecords) end
function ListManager.defaultSortFunc(a, b) end
function ListManager.updatePageControls(w) end
function ListManager.getListContextWindow(w) end
function ListManager.handlePageStart(w) end
function ListManager.handlePagePrev(w) end
function ListManager.handlePageNext(w) end
function ListManager.handlePageEnd(w) end
function ListManager.getDisplayOffset(w) end
function ListManager.setDisplayOffset(w, n, bSkipRefresh) end
function ListManager.getDisplayRecordCount(w) end
function ListManager.setDisplayRecordCount(w, n) end
function ListManager.setPageSize(w, nPageSize) end
function ListManager.getPageSize(w) end
function ListManager.getCurrentPage(w) end
function ListManager.getMaxPages(w) end
function ListManager.getFTColumnValue(node, sField, nMax) end
