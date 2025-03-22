---@meta StoryManager

---@class StoryManager

StoryManager = {}

function StoryManager.onTabletopInit() end
function StoryManager.initStoryIndex() end
function StoryManager.onStoryRecordAdd(node) end
function StoryManager.onStoryRecordDelete(node) end
function StoryManager.onStoryRecordCategoryChange(node) end
function StoryManager.onStoryRecordRename(nodeName) end
function StoryManager.onStoryAdvancedRecordIntegrityChange(node) end
function StoryManager.getStoryIndex(sModule, bInit) end
function StoryManager.addStoryIndexRecord(node, bInit) end
function StoryManager.removeStoryIndexRecord(node) end
function StoryManager.updateStoryIndexRecordCategory(node) end
function StoryManager.updateStoryIndexRecordName(node) end
function StoryManager.rebuildStoryPageIndexes(sModule) end
function StoryManager.rebuildBookIndex(sModule) end
function StoryManager.getBookIndexPath(sModule) end
function StoryManager.getBookPages(sModule) end
function StoryManager.clearBookPages(sModule) end
function StoryManager.isBookRecord(sModule, sRecord, bRebuild) end
function StoryManager.deleteBookIndexRecordByTargetRecord(sRecord) end
function StoryManager.rebuildNonBookIndex(sModule) end
function StoryManager.getNonBookPages(sModule, sCategory) end
function StoryManager.clearNonBookPages(sModule) end
function StoryManager.sortFuncStoryIndex(a, b) end
function StoryManager.getStoryPrevRecord(sModule, sRecord, bRebuild) end
function StoryManager.getStoryNextRecord(sModule, sRecord, bRebuild) end
function StoryManager.setBlockButtonIconColor(s) end
function StoryManager.getBlockButtonIconColor() end
function StoryManager.getBlockFrames() end
function StoryManager.addBlockFrame(sName) end
function StoryManager.removeBlockFrame(sName) end
function StoryManager.updatePageSub(cSub, sRecord) end
function StoryManager.handlePageTop(w, sRecord) end
function StoryManager.handlePagePrev(w, sRecord) end
function StoryManager.handlePageNext(w, sRecord) end
function StoryManager.onLinkActivated(w, sClass, sRecord) end
function StoryManager.activateLink(w, sClass, sRecord, bPopOut) end
function StoryManager.activateEmbeddedLink(w, sClass, sRecord) end
function StoryManager.openLinkInNewWindow(sClass, sRecord) end
function StoryManager.getWindowOrderValue(w) end
function StoryManager.setWindowOrderValue(w, nOrder) end
function StoryManager.updateOrderValues(cList) end
function StoryManager.initBookPaths() end
function StoryManager.getBookPaths() end
function StoryManager.addBookPath(s) end
function StoryManager.getBookRecordNodes() end
function StoryManager.getModuleBookRecordNode(sModule) end
function StoryManager.openBook(sModule) end
function StoryManager.onBookIndexAdd(w) end
function StoryManager.onBookIndexAddEndHelper(cList) end
function StoryManager.onBookIndexAddHelper(cList, nOrder) end
function StoryManager.onBookIndexDelete(w) end
function StoryManager.onBookIndexMoveUp(w) end
function StoryManager.onBookIndexMoveDown(w) end
function StoryManager.onBookIndexMoveHelper(w, cList, bDown) end
function StoryManager.onBookIndexDrop(w, draginfo) end
function StoryManager.onBookIndexStoryDrop(w, sClass, sRecord) end
function StoryManager.onBookKeywordGen() end
function StoryManager.onBookKeywordGenPage(nodePage) end
function StoryManager.helperGetKeywordsFromText(sText, tKeywords) end
function StoryManager.onBlockAddEndHelper(cList) end
function StoryManager.onBlockAddHelper(cList, nOrder) end
function StoryManager.onBlockAdd(wRecord, sBlockType) end
function StoryManager.onBlockDelete(wBlock) end
function StoryManager.onBlockMoveUp(wBlock) end
function StoryManager.onBlockMoveDown(wBlock) end
function StoryManager.onBlockDrop(wBlock, draginfo) end
function StoryManager.onBlockImageDropHelper(wBlock, sAsset, sName, sClass, sRecord) end
function StoryManager.onBlockScaleUp(wBlock) end
function StoryManager.onBlockScaleDown(wBlock) end
function StoryManager.onBlockSizeClear(wBlock) end
function StoryManager.onBlockUpdate(wBlock, bReadOnly) end
function StoryManager.updateBlockControls(wBlock, bReadOnly) end
function StoryManager.updateBlockTextControls(wBlock, bReadOnly) end
function StoryManager.updateBlockTextControlHelper(c, bReadOnly) end
function StoryManager.updateBlockImageControls(wBlock, bReadOnly) end
function StoryManager.updateBlockEditControls(wBlock, bReadOnly) end
function StoryManager.onRecordNodeRebuild(nodeRecord) end
function StoryManager.onRecordRebuild(wRecord) end
function StoryManager.onBlockNodeRebuild(nodeBlock) end
function StoryManager.onBlockRebuild(wBlock) end
function StoryManager.clearBlockControls(wBlock) end
function StoryManager.clearBlockTextControls(wBlock) end
function StoryManager.clearBlockImageControls(wBlock) end
function StoryManager.clearBlockEditControls(wBlock) end
function StoryManager.getBlockFrame(wBlock, sAlign) end
function StoryManager.getBlockImageData(wBlock, sAlign) end
function StoryManager.getBlockImageScale(wBlock) end
function StoryManager.getBlockImageLegacySize(wBlock) end
function StoryManager.getBlockIconData(wBlock, sAlign) end
function StoryManager.applyBlockGraphicSizeMaxHelper(tImageSize, nMaxW, nMaxH) end
function StoryManager.addBlockHeader(wBlock) end
function StoryManager.addBlockText(wBlock, sAlign, bUseSecondField) end
function StoryManager.addBlockImage(wBlock, sAlign) end
function StoryManager.addBlockIcon(wBlock, sAlign) end
function StoryManager.adjustBlockToImageSize(wBlock) end
function StoryManager.onImageDrag(wBlock, draginfo) end
function StoryManager.onImagePressed(wBlock) end
function StoryManager.registerCopyPasteToolbarButtons() end
function StoryManager.onCopyButtonPressed(c) end
function StoryManager.onPasteButtonInit(c) end
function StoryManager.onPasteButtonPressed(c) end
function StoryManager.hasPasteRecord() end
function StoryManager.getPasteRecord() end
function StoryManager.setPasteRecord(sRecord) end
function StoryManager.onPasteRecordChangeEvent() end
function StoryManager.performRecordCopy(wRecord) end
function StoryManager.performRecordPaste(wRecord) end
function StoryManager.initRecordLegacyText(wRecord) end
function StoryManager.migrateRecordLegacyTextToBlock(wRecord) end
