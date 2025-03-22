---@meta SoundManager

---@class SoundManager

SoundManager = {}

function SoundManager.onInit() end
function SoundManager.onTabletopInit() end
function SoundManager.isEnabled() end
function SoundManager.onOptionChanged() end
function SoundManager.registerSoundSystem(sKey, tData) end
function SoundManager.getSoundSystems() end
function SoundManager.getSoundSystemKeys() end
function SoundManager.getSoundSystemByKey(sKey) end
function SoundManager.hasSoundSystemFunctionByID(sFunction, sSoundID) end
function SoundManager.callSoundSystemByID(sFunction, sSoundID, ...) end
function SoundManager.callForAllSoundSystems(sFunction, ...) end
function SoundManager.handlerSoundPlay(_, sPath) end
function SoundManager.handlerSoundStop(_, sPath) end
function SoundManager.handlerSoundStopAll() end
function SoundManager.onChatDrop(draginfo) end
function SoundManager.getSettingsWindow() end
function SoundManager.openSettingsWindow() end
function SoundManager.populateSettingsWindow(wSettings) end
function SoundManager.onSettingsSystemButtonPressed(sKey, wSettings) end
function SoundManager.refreshSettingsFilter(wSettings) end
function SoundManager.setFilterNameControl(s) end
function SoundManager.setFilterUpdate(bValue) end
function SoundManager.getFilterUpdate() end
function SoundManager.refreshSettingsContent() end
function SoundManager.getContextWindow() end
function SoundManager.populateContextWindow(wContext) end
function SoundManager.refreshNowPlaying(wContext) end
function SoundManager.performPlay(w, draginfo) end
function SoundManager.performStop(w, draginfo) end
function SoundManager.performStopAll(draginfo) end
function SoundManager.parseSoundID(sSoundID, bShowError) end
function SoundManager.playSound(sSoundID) end
function SoundManager.stopSound(sSoundID) end
function SoundManager.stopAll() end
