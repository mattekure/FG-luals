---@meta ItemManager

---@class ItemManager

ItemManager = {}

function ItemManager.onInit() end
function ItemManager.addStandardItemTransferHandlers() end
function ItemManager.doesRecordTypeHaveInventory(sRecordType) end
function ItemManager.doesRecordTypeHaveCurrency(sRecordType) end
function ItemManager.doesRecordTypeAllowInventoryTransfer(sRecordType) end
function ItemManager.setActorTypeInfo(sRecordType, tData) end
function ItemManager.getDefaultInventoryPaths() end
function ItemManager.setInventoryPaths(sRecordType, tPaths) end
function ItemManager.getInventoryPaths(sRecordType) end
function ItemManager.getBaseInventoryPath(sRecordType) end
function ItemManager.getDefaultEncumbranceFields() end
function ItemManager.setEncumbranceFields(sRecordType, tFields) end
function ItemManager.getEncumbranceFields(sRecordType) end
function ItemManager.getDefaultCurrencyPaths() end
function ItemManager.setCurrencyPaths(sRecordType, tPaths) end
function ItemManager.getCurrencyPaths(sRecordType) end
function ItemManager.getDefaultCurrencyNameField() end
function ItemManager.setCurrencyNameField(sRecordType, sField) end
function ItemManager.getCurrencyNameField(sRecordType) end
function ItemManager.getDefaultCurrencyEncumbranceFields() end
function ItemManager.setCurrencyEncumbranceFields(sRecordType, tFields) end
function ItemManager.getCurrencyEncumbranceFields(sRecordType) end
function ItemManager.setCostField(sField) end
function ItemManager.getCostField() end
function ItemManager.getTargetInventoryListPath(nodeTarget, sClass) end
function ItemManager.helperGetAllRecordInventoryPaths(nodeTarget) end
function ItemManager.setCustomCharAdd(fCharAdd) end
function ItemManager.onCharAddEvent(nodeItem) end
function ItemManager.setCustomCharRemove(fCharRemove) end
function ItemManager.onCharRemoveEvent(nodeItem) end
function ItemManager.addFieldToIgnore (sIgnore) end
function ItemManager.setPackIncludedItemListPath(s) end
function ItemManager.getPackIncludedItemListPath() end
function ItemManager.registerPreTransferHandler(fn) end
function ItemManager.unregisterPreTransferHandler(fn) end
function ItemManager.callPreTransferHandlers(...) end
function ItemManager.registerCleanupTransferHandler(fn) end
function ItemManager.unregisterCleanupTransferHandler(fn) end
function ItemManager.callCleanupTransferHandlers(...) end
function ItemManager.registerPostTransferHandler(fn) end
function ItemManager.unregisterPostTransferHandler(fn) end
function ItemManager.callPostTransferHandlers(...) end
function ItemManager.getIDState(nodeRecord, bIgnoreHost) end
function ItemManager.getDisplayName(nodeItem, bIgnoreHost) end
function ItemManager.getSortName(nodeItem) end
function ItemManager.getItemSourceType(vNode) end
function ItemManager.compareFields(node1, node2, bTop) end
function ItemManager.isPack() end
function ItemManager.addLinkToParcel(nodeParcel, sLinkClass, sLinkRecord, nCount) end
function ItemManager.handleAnyDrop(vTarget, draginfo) end
function ItemManager.handleItem(vTargetRecord, sTargetList, sClass, sRecord, bTransferAll) end
function ItemManager.handleCurrency(vTargetRecord, sCurrency, nCurrency) end
function ItemManager.handleParcel(vTargetRecord, sRecord) end
function ItemManager.handleString(vTargetRecord, s, n) end
function ItemManager.handleAnyDropOnItemRecord(vTarget, draginfo) end
function ItemManager.sendItemTransfer(sTargetRecord, sTargetList, sClass, sRecord, bTransferAll) end
function ItemManager.handleItemTransfer(msgOOB) end
function ItemManager.onAddItemPackLoadCallback(tCustom) end
function ItemManager.addItemToList(vList, sClass, vSource, bTransferAll, nTransferCount) end
function ItemManager.addStringToList(vList, sItem, nCount) end
function ItemManager.helperAddItemMain(rSourceItem, rTargetItem) end
function ItemManager.helperAddItemBlockTransfer(rSourceItem, rTargetItem) end
function ItemManager.handleAddItemPackTransfer(rSourceItem, rTargetItem) end
function ItemManager.helperAddItemCreateTempNode(rTargetItem) end
function ItemManager.helperAddItemCopyToTempNode(rSourceItem, rTempItem, rTargetItem) end
function ItemManager.helperAddItemCleanTempNode(rTempItem) end
function ItemManager.helperAddItemGetTransferTargetNode(rTempItem, rTargetItem) end
function ItemManager.helperAddItemGetFinalTransferCount(rSourceItem, rTargetItem) end
function ItemManager.helperAddItemUpdateCount(rSourceItem, rTargetItem) end
function ItemManager.helperAddItemPostEvents(rSourceItem, rTargetItem) end
function ItemManager.helperAddItemDeleteTempNode(rTempItem) end
function ItemManager.sendCurrencyTransfer(sTargetRecord, sCurrency, nCurrency) end
function ItemManager.handleCurrencyTransfer(msgOOB) end
function ItemManager.sendParcelTransfer(sTargetRecord, sSource) end
function ItemManager.handleParcelTransfer(msgOOB) end
function ItemManager.sendItemStringTransfer(sTargetRecord, sItemName, nItemCount) end
function ItemManager.handleItemStringTransfer(msgOOB) end
function ItemManager.onInventorySortCompare(w1, w2) end
function ItemManager.getInventorySortPath(cList, w) end
function ItemManager.onInventorySortUpdate(cList) end
function ItemManager.getAllInventoryListPaths(nodeTarget) end
function ItemManager.getTransferClass() end
