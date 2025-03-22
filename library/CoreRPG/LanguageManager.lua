---@meta LanguageManager

---@class LanguageManager

LanguageManager = {}

function LanguageManager.onInit() end
function LanguageManager.onTabletopInit() end
function LanguageManager.isCampaignLanguage(s) end
function LanguageManager.getCampaignLanguageMap() end
function LanguageManager.getCampaignLanguageMapLower() end
function LanguageManager.getCampaignLanguageFont(s) end
function LanguageManager.initSpecialCases() end
function LanguageManager.isCampaignSpeaksAllTag(s) end
function LanguageManager.isCampaignUnderstandsAllTag(s) end
function LanguageManager.isCampaignTonguesTag(s) end
function LanguageManager.populateCampaignLanguages() end
function LanguageManager.addCampaignLanguageHandlers() end
function LanguageManager.refreshCampaignLanguages() end
function LanguageManager.onIdentityActivation(sIdentity, sUser, bActive) end
function LanguageManager.onIdentityStateChange(sIdentity, sUser, sState, bState) end
function LanguageManager.setSpeakerIdentity(sIdentity) end
function LanguageManager.onChatDrop(draginfo) end
function LanguageManager.onChatDeliverMessage(msg, sMode) end
function LanguageManager.handleLangChatResult(msgOOB) end
function LanguageManager.refreshChatLanguages() end
function LanguageManager.setCurrentLanguage(sLang) end
function LanguageManager.getKnownLanguages(sIdentity, bHost) end
function LanguageManager.handleLangChat(msgOOB) end
function LanguageManager.deliverLanguageMessagesToUser(sUser, msg, sLang, aUnderstood) end
function LanguageManager.convertStringToGibberish(sInput, sLang, nUnderstood) end
function LanguageManager.calcRandomSeedFromString(sText, sLang) end
