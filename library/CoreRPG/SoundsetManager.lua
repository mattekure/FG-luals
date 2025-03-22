---@meta SoundsetManager

---@class SoundsetManager

SoundsetManager = {}

function SoundsetManager.onInit() end
function SoundsetManager.onTabletopInit() end
function SoundsetManager.initStandardSettings() end
function SoundsetManager.registerStandardSettingsCastAndAttack() end
function SoundsetManager.registerStandardSettingsAttack() end
function SoundsetManager.registerSimpleSettingsAttack() end
function SoundsetManager.registerTriggerSubtype(sKey, tPatterns) end
function SoundsetManager.getTriggerSubtype(sKey) end
function SoundsetManager.getAllTriggerSubtypes() end
function SoundsetManager.setRecordTypeDropCallback(sRecordType, fn) end
function SoundsetManager.getRecordTypeDropCallback(sRecordType) end
function SoundsetManager.hasRecordTypeDropCallback(sRecordType) end
function SoundsetManager.onRecordTypeDropEvent(sRecordType, nodeSoundset, sClass, sRecord) end
function SoundsetManager.onWindowOpened(w) end
function SoundsetManager.onWindowClosed(sClass) end
function SoundsetManager.onUpdateCTName() end
function SoundsetManager.onDeleteCTEntry() end
function SoundsetManager.handleChatMessage(msg) end
function SoundsetManager.helperHandleChatMessageCheckSoundset(v, tMatch) end
function SoundsetManager.helperHandleChatMessagePlay(nodeSoundset) end
function SoundsetManager.getStorySoundsets() end
function SoundsetManager.getStoryIncludedSoundsets() end
function SoundsetManager.updateStoryContext() end
function SoundsetManager.helperUpdateStoryContextGetDataPaths() end
function SoundsetManager.helperUpdateStoryContextGetSoundset(v, tDataPaths, tSoundsetMatch) end
function SoundsetManager.helperUpdateStoryContextGetIncludedSoundsets(tSoundsetMatch) end
function SoundsetManager.helperUpdateStoryContextMatches(tSoundsetMatch, tIncludedMatch) end
function SoundsetManager.getImageSoundsets() end
function SoundsetManager.getImageIncludedSoundsets() end
function SoundsetManager.updateImageContext() end
function SoundsetManager.helperUpdateImageContextGetDataPaths() end
function SoundsetManager.helperUpdateImageContextGetSoundset(v, tDataPaths, tSoundsetMatch) end
function SoundsetManager.helperUpdateImageContextGetIncludedSoundsets(tSoundsetMatch) end
function SoundsetManager.helperUpdateImageContextMatches(tSoundsetMatch, tIncludedMatch) end
function SoundsetManager.getNPCSoundsets() end
function SoundsetManager.updateNPCContext() end
function SoundsetManager.helperUpdateNPCContextGetNames() end
function SoundsetManager.helperUpdateNPCContextCheckSoundset(v, tNames, tSoundsetMatch) end
function SoundsetManager.helperUpdateNPCContextPaths(tSoundsetMatch) end
function SoundsetManager.populateContextWindow(w) end
function SoundsetManager.addContext(sPath, sContextType, w) end
function SoundsetManager.removeContext(sPath) end
function SoundsetManager.helperFindContext(w, node) end
function SoundsetManager.handleAnyDrop(draginfo, nodeSoundset) end
function SoundsetManager.helperHandleSoundDrop(nodeSoundset, _, sRecord) end
function SoundsetManager.helperHandleRecordTypeDrop(nodeSoundset, sClass, sRecord) end
function SoundsetManager.handleSoundsetDrop(nodeSoundset, sClass, sRecord) end
function SoundsetManager.handleStoryDrop(nodeSoundset, sClass, sRecord) end
function SoundsetManager.handleImageDrop(nodeSoundset, sClass, sRecord) end
function SoundsetManager.handleNPCDrop(nodeSoundset, _, sRecord) end
function SoundsetManager.handleItemDrop(nodeSoundset, _, sRecord) end
function SoundsetManager.handleStandardSpellDrop(nodeSoundset, _, sRecord) end
function SoundsetManager.helperSetRecordName(nodeSoundset, sRecordType, sRecord) end
