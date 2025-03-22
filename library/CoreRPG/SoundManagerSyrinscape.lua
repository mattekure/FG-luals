---@meta SoundManagerSyrinscape

---@class SoundManagerSyrinscape

SoundManagerSyrinscape = {}

function SoundManagerSyrinscape.onInit() end
function SoundManagerSyrinscape.onClose() end
function SoundManagerSyrinscape.loadConfig() end
function SoundManagerSyrinscape.saveConfig() end
function SoundManagerSyrinscape.cleanUpDatabase() end
function SoundManagerSyrinscape.parseSoundID(sSoundID) end
function SoundManagerSyrinscape.playSound(sSoundID) end
function SoundManagerSyrinscape.stopSound(sSoundID) end
function SoundManagerSyrinscape.stopAll() end
function SoundManagerSyrinscape.buildPlayURL(tSound) end
function SoundManagerSyrinscape.buildStopURL(tSound) end
function SoundManagerSyrinscape.buildStopAllURL() end
function SoundManagerSyrinscape.getSoundData() end
function SoundManagerSyrinscape.setSoundData(tData, bSave) end
function SoundManagerSyrinscape.getDataFilePath() end
function SoundManagerSyrinscape.loadData() end
function SoundManagerSyrinscape.saveData() end
function SoundManagerSyrinscape.rebuildFilters() end
function SoundManagerSyrinscape.getFilterValues(sKey) end
function SoundManagerSyrinscape.clearFilterValues() end
function SoundManagerSyrinscape.setFilterValue(sKey, s) end
function SoundManagerSyrinscape.getFilterValue(sKey) end
function SoundManagerSyrinscape.getSoundDataID(v) end
function SoundManagerSyrinscape.getSoundDataRecord(v, bBuildID) end
function SoundManagerSyrinscape.getSoundDataFilterChoices(index) end
function SoundManagerSyrinscape.cleanUpProductPack(s) end
function SoundManagerSyrinscape.parseDisplayType(tSound) end
function SoundManagerSyrinscape.sortfuncSettingsContent(a, b) end
function SoundManagerSyrinscape.isSettingsContentFilteredRecord(v) end
function SoundManagerSyrinscape.onSettingsFilterChanged(tValuesLower) end
function SoundManagerSyrinscape.handleSettingsContentDrop(draginfo) end
function SoundManagerSyrinscape.openSettingsAuthorization() end
function SoundManagerSyrinscape.onButtonImportCSV() end
function SoundManagerSyrinscape.onDialogEndImportCSV(sResult, sPath) end
function SoundManagerSyrinscape.onButtonImportWeb() end
function SoundManagerSyrinscape.onWebImportComplete(_, sResponse) end
function SoundManagerSyrinscape.getNowPlaying(tData) end
function SoundManagerSyrinscape.clearNowPlaying() end
function SoundManagerSyrinscape.addToNowPlaying(tSound) end
function SoundManagerSyrinscape.removeFromNowPlaying(tSound) end
function SoundManagerSyrinscape.helperAddToNowPlayingTable(tSound) end
function SoundManagerSyrinscape.helperRemoveFromNowPlayingTable(tSound) end
function SoundManagerSyrinscape.helperFindInNowPlayingTable(tSound) end
function SoundManagerSyrinscape.loadVolume() end
function SoundManagerSyrinscape.saveVolume() end
function SoundManagerSyrinscape.getGlobalMute() end
function SoundManagerSyrinscape.setGlobalMute(bValue) end
function SoundManagerSyrinscape.getOneShotMute() end
function SoundManagerSyrinscape.setOneShotMute(bValue) end
function SoundManagerSyrinscape.getGlobalVolume() end
function SoundManagerSyrinscape.getOneShotVolume() end
function SoundManagerSyrinscape.setGlobalVolume(n) end
function SoundManagerSyrinscape.setOneShotVolume(n) end
function SoundManagerSyrinscape.stepGlobalVolume(nStep) end
function SoundManagerSyrinscape.stepOneShotVolume(nStep) end
function SoundManagerSyrinscape.updateVolumeDisplay(wContext) end
function SoundManagerSyrinscape.postGlobalVolume(bShowError) end
function SoundManagerSyrinscape.postOneShotVolume(bShowError) end
function SoundManagerSyrinscape.getURLWithAuthToken(sPath) end
function SoundManagerSyrinscape.getControlPanelURL() end
function SoundManagerSyrinscape.getWebImportURL() end
function SoundManagerSyrinscape.getSessionGenerateURL() end
function SoundManagerSyrinscape.getSessionGMURL(sSessionID) end
function SoundManagerSyrinscape.getSessionPlayerURL(sSessionID) end
function SoundManagerSyrinscape.helperURLAppendAuthToken(sURL) end
function SoundManagerSyrinscape.sendPlayerInvite() end
function SoundManagerSyrinscape.generateSessionID() end
function SoundManagerSyrinscape.onSessionGenerated(_, sResponse) end
function SoundManagerSyrinscape.openWebControlPanel() end
function SoundManagerSyrinscape.loadAuthorizationToken() end
function SoundManagerSyrinscape.saveAuthorizationToken(s) end
function SoundManagerSyrinscape.getAuthorizationToken() end
function SoundManagerSyrinscape.setAuthorizationToken(s) end
function SoundManagerSyrinscape.checkAuthToken(bShowErrors) end
function SoundManagerSyrinscape.loadSession() end
function SoundManagerSyrinscape.saveSession(s) end
function SoundManagerSyrinscape.getSession() end
function SoundManagerSyrinscape.setSession(s) end
function SoundManagerSyrinscape.checkSession() end
