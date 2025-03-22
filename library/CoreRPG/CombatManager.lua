---@meta CombatManager

---@class CombatManager

CombatManager = {}

function CombatManager.onTabletopInit() end
function CombatManager.registerStandardCombatHotKeys() end
function CombatManager.onHotKeyNextActor() end
function CombatManager.onHotKeyNextRound() end
function CombatManager.onOptionTokenPartyVisionMoveChanged() end
function CombatManager.onOptionTokenFOWChanged() end
function CombatManager.setTracker(sKey, tData) end
function CombatManager.getTrackerKeys() end
function CombatManager.getTrackerPath(sKey) end
function CombatManager.getTrackerCombatantPath(sKey) end
function CombatManager.getTrackerSort(sKey) end
function CombatManager.getTrackerCleanup(sKey) end
function CombatManager.getTrackerKeyFromCT(v) end
function CombatManager.isTrackerCT(v) end
function CombatManager.initTrackers() end
function CombatManager.setCustomGetCombatantNodes(fn) end
function CombatManager.setCustomPreDeleteCombatantHandler(fn) end
function CombatManager.removeCustomPreDeleteCombatantHandler(fn) end
function CombatManager.onPreDeleteCombatantEvent(nodeCT) end
function CombatManager.setCustomDeleteCombatantHandler(fn) end
function CombatManager.removeCustomDeleteCombatantHandler(fn) end
function CombatManager.onDeleteCombatantEvent(nodeCT) end
function CombatManager.setCustomPostDeleteCombatantHandler(fn) end
function CombatManager.removeCustomPostDeleteCombatantHandler(fn) end
function CombatManager.onPostDeleteCombatantEvent() end
function CombatManager.setCustomAddCombatantEffectHandler(fn) end
function CombatManager.removeCustomAddCombatantEffectHandler(fn) end
function CombatManager.onAddCombatantEffectEvent(nodeEffectList, nodeEffect) end
function CombatManager.setCustomPreDeleteCombatantEffectHandler(fn) end
function CombatManager.removeCustomPreDeleteCombatantEffectHandler(fn) end
function CombatManager.onPreDeleteCombatantEffectEvent(nodeEffect) end
function CombatManager.setCustomDeleteCombatantEffectHandler(fn) end
function CombatManager.removeCustomDeleteCombatantEffectHandler(fn) end
function CombatManager.onDeleteCombatantEffectEvent(nodeEffectList) end
function CombatManager.addCombatantFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.addKeyedCombatantFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addAllCombatantFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeCombatantFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeKeyedCombatantFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addDelayedSingleFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addDelayedAllFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeDelayedSingleFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.removeDelayedAllFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.helperInitCombatantFieldHandlers() end
function CombatManager.helperAddCombatantFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.helperAddAllCombatantFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.helperRemoveCombatantFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addCombatantEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.addKeyedCombatantEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addAllCombatantEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeCombatantEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeKeyedCombatantEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addDelayedSingleEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.addDelayedAllEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.removeDelayedSingleEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.removeDelayedAllEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.helperInitCombatantEffecFieldHandlers() end
function CombatManager.helperAddCombatantEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.helperAddAllCombatantEffectFieldChangeHandler(sField, sEvent, fn) end
function CombatManager.helperRemoveCombatantEffectFieldChangeHandler(sKey, sField, sEvent, fn) end
function CombatManager.setCustomRoundStart(fRoundStart) end
function CombatManager.onRoundStartEvent(nCurrent) end
function CombatManager.setCustomTurnStart(fTurnStart) end
function CombatManager.onTurnStartEvent(nodeCT) end
function CombatManager.setCustomTurnEnd(fTurnEnd) end
function CombatManager.onTurnEndEvent(nodeCT) end
function CombatManager.setCustomInitChange(fInitChange) end
function CombatManager.onInitChangeEvent(nodeOldCT, nodeNewCT) end
function CombatManager.setCustomCombatReset(fCombatReset) end
function CombatManager.onCombatResetEvent() end
function CombatManager.setCustomSort(fn) end
function CombatManager.getCustomSort() end
function CombatManager.onSortCompare(node1, node2) end
function CombatManager.onTrackerSortCompare(sKey, node1, node2) end
function CombatManager.getCustomInitSwapPlayerAllow() end
function CombatManager.setCustomInitSwapPlayerAllow(fn) end
function CombatManager.createCombatantNode(sKey) end
function CombatManager.getCombatantNodes(sKey, sRecordType) end
function CombatManager.getAllCombatantNodes(sRecordType) end
function CombatManager.getActiveCT(sKey, sRecordType) end
function CombatManager.getCTFromNode(vNode) end
function CombatManager.getCTFromTokenRef(vContainer, nId) end
function CombatManager.getCTFromToken(token) end
function CombatManager.getTokenFromCT(vEntry) end
function CombatManager.getFactionFromCT(vEntry) end
function CombatManager.getTokenVisibilityFromCT(vEntry) end
function CombatManager.getCurrentUserCT(sKey) end
function CombatManager.openMap(vNode) end
function CombatManager.centerOnToken(nodeCT, bOpen) end
function CombatManager.selectToken(nodeCT) end
function CombatManager.isCTHidden(vEntry) end
function CombatManager.onInitSwap(nodeSourceCT, nodeTargetCT) end
function CombatManager.notifyInitSwap(nodeSourceCT, nodeTargetCT) end
function CombatManager.handleInitSwap(msgOOB) end
function CombatManager.performInitSwap(nodeSourceCT, nodeTargetCT, bHost) end
function CombatManager.sortfuncSimple(node1, node2) end
function CombatManager.sortfuncStandard(node1, node2) end
function CombatManager.sortfuncDnD(node1, node2) end
function CombatManager.getSortedCombatantList(sKey) end
function CombatManager.handleEndTurn(msgOOB) end
function CombatManager.notifyEndTurn() end
function CombatManager.addGMIdentity(nodeEntry) end
function CombatManager.clearGMIdentity() end
function CombatManager.showTurnMessage(nodeEntry, bActivate, bSkipBell) end
function CombatManager.requestActivation(nodeEntry, bSkipBell) end
function CombatManager.isActorToSkipTurn(nodeEntry) end
function CombatManager.nextActor(bSkipBell, bNoRoundAdvance) end
function CombatManager.nextRound(nRounds) end
function CombatManager.nextTurn() end
function CombatManager.onEntryActivationChanged(nodeEntry) end
function CombatManager.stripCreatureNumber(s) end
function CombatManager.randomName(sBaseName) end
function CombatManager.getRandomName(sKey, sBaseName) end
function CombatManager.resetInit() end
function CombatManager.resetCombatantEffects(sKey) end
function CombatManager.callForEachCombatant(fn, ...) end
function CombatManager.callForEachCombatantEffect(fn, ...) end
function CombatManager.rollTypeInit(sType, fRollCombatantEntryInit, ...) end
function CombatManager.rollStandardEntryInit(tInit) end
function CombatManager.helperRollEntryInit(tInit) end
function CombatManager.helperRollRandomInit(tInit) end
function CombatManager.resetStandardInit() end
function CombatManager.resetCombatantInit(nodeCT) end
function CombatManager.resolveNode(v) end
function CombatManager.resolvePath(v) end
function CombatManager.addPlayerRecordType(sRecordType) end
function CombatManager.removePlayerRecordType(sRecordType) end
function CombatManager.initPlayerRecordTypes() end
function CombatManager.onPlayerRecordDelete(v) end
function CombatManager.isPlayerCT(v) end
function CombatManager.isOwnedPlayerCT(v) end
function CombatManager.getRecordType(nodeCT) end
function CombatManager.isRecordType(nodeCT, s) end
function CombatManager.isActive(nodeCT) end
function CombatManager.handleCTTokenPressed(nodeCT) end
function CombatManager.handleCTTokenDoubleClick(nodeCT) end
function CombatManager.handleCTTokenWheel(nodeCT, notches) end
function CombatManager.handleCTTokenDragStart(nodeCT, draginfo) end
function CombatManager.handleCTTokenDragEnd(nodeCT, draginfo) end
function CombatManager.handleCTTokenDrop(nodeCT, draginfo) end
function CombatManager.handleCTInitDragStart(nodeCT, draginfo) end
function CombatManager.addTokenFromCT(vImage, nodeCT, x, y) end
function CombatManager.handleFactionDropOnImage(draginfo, imagecontrol, x, y) end
function CombatManager.replaceCombatantToken(nodeCT, newTokenInstance) end
function CombatManager.onTokenDelete(tokenMap) end
function CombatManager.deleteFaction(sFaction) end
function CombatManager.deleteFactionFromTracker(sKey, sFaction) end
function CombatManager.deleteNonFaction(sFaction) end
function CombatManager.deleteNonFactionFromTracker(sKey, sFaction) end
function CombatManager.deleteCombatant(v) end
function CombatManager.deleteCleanup(v) end
function CombatManager.isPC(v) end
function CombatManager.setCustomDrop(fn) end
function CombatManager.onDrop(sNodeType, sNodePath, draginfo) end
