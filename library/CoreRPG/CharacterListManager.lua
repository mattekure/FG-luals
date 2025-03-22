---@meta CharacterListManager

---@class CharacterListManager

CharacterListManager = {}

function CharacterListManager.onInit() end
function CharacterListManager.onTabletopInit() end
function CharacterListManager.addStandardDropSupport() end
function CharacterListManager.addStandardAFKSupport() end
function CharacterListManager.onOptionChanged() end
function CharacterListManager.convertIdentityToPath(sIdentity) end
function CharacterListManager.convertPathToIdentity(sPath) end
function CharacterListManager.registerWindow(w) end
function CharacterListManager.getWindow() end
function CharacterListManager.resizeWindow() end
function CharacterListManager.setEntryClass(sWindowClass) end
function CharacterListManager.getEntryClass() end
function CharacterListManager.setDecorator(sName, fn) end
function CharacterListManager.getDecorators() end
function CharacterListManager.getDisplayList() end
function CharacterListManager.clearDisplayList() end
function CharacterListManager.getDisplayListCount() end
function CharacterListManager.getDisplayControlByPath(sPath) end
function CharacterListManager.getDisplayControlByUser(sUser) end
function CharacterListManager.refreshDisplayList() end
function CharacterListManager.createEntry(w, tData) end
function CharacterListManager.destroyEntry(w, c) end
function CharacterListManager.defaultSortFunc(c1, c2) end
function CharacterListManager.addUserHandlers() end
function CharacterListManager.onUserLogin(sUser, bActivated) end
function CharacterListManager.onUserStateChange(sUser, sState) end
function CharacterListManager.onIdentityActivation(sIdentity, sUser, bActivated) end
function CharacterListManager.onIdentityStateChange(sIdentity, sUser, sState, vState) end
function CharacterListManager.getActiveUsers() end
function CharacterListManager.setActiveUser(sUser, bActivated) end
function CharacterListManager.setUserState(sUser, sState) end
function CharacterListManager.getUserState(sUser) end
function CharacterListManager.getActivatedIdentities() end
function CharacterListManager.getActivatedIdentity(sPath) end
function CharacterListManager.setActivatedIdentity(sIdentity, sUser, bActivated) end
function CharacterListManager.setActivatedIdentityData(sIdentity, sUser, sState, vState) end
function CharacterListManager.releaseIdentity(sPath) end
function CharacterListManager.handleReleaseIdentity(msgOOB) end
function CharacterListManager.addPartyHandlers() end
function CharacterListManager.refreshParty(node) end
function CharacterListManager.getPartyIdentities() end
function CharacterListManager.rebuildPartyIdentities() end
function CharacterListManager.registerDropHandler(sDropType, fHandler) end
function CharacterListManager.unregisterDropHandler(sDropType) end
function CharacterListManager.processDrop(tData, draginfo) end
function CharacterListManager.onNumberDrop(tData, draginfo) end
function CharacterListManager.onStringDrop(tData, draginfo) end
function CharacterListManager.onShortcutDrop(tData, draginfo) end
function CharacterListManager.processShortcutDrop(tData, draginfo) end
function CharacterListManager.onDefaultDrop(tData, draginfo) end
function CharacterListManager.processAFK(sCommand, sParams) end
function CharacterListManager.toggleAFK() end
function CharacterListManager.handleAFK(msgOOB) end
function CharacterListManager.messageAFK(sUser) end
function CharacterListManager.addDecorator(sName, fn) end
function CharacterListManager.removeDecorator(sName) end
function CharacterListManager.getLegacyDecorators() end
function CharacterListManager.getAllEntries() end
function CharacterListManager.getEntry(sIdentity) end
function CharacterListManager.getEntryCount() end
