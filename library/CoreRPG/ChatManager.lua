---@meta ChatManager

---@class ChatManager

ChatManager = {}

function ChatManager.onInit() end
function ChatManager.addStandardWhisperSupport() end
function ChatManager.addStandardModSupport() end
function ChatManager.addStandardImportExportSupport() end
function ChatManager.getChatWindow() end
function ChatManager.registerDiceLandedCallback(fn) end
function ChatManager.unregisterDiceLandedCallback(fn) end
function ChatManager.onDiceLanded(...) end
function ChatManager.registerDeliverMessageCallback(fn) end
function ChatManager.unregisterDeliverMessageCallback(fn) end
function ChatManager.onDeliverMessage(...) end
function ChatManager.registerReceiveMessageCallback(fn) end
function ChatManager.unregisterReceiveMessageCallback(fn) end
function ChatManager.onReceiveMessage(...) end
function ChatManager.registerDropCallback(sDropType, fn) end
function ChatManager.unregisterDropCallback(sDropType, fn) end
function ChatManager.onDrop(draginfo) end
function ChatManager.doUserAutoComplete(ctrl) end
function ChatManager.searchForIdentity(sSearch) end
function ChatManager.processMod(_, sParams) end
function ChatManager.processFlush() end
function ChatManager.processImportPC() end
function ChatManager.processImportNPC() end
function ChatManager.processExportPC(_, sParams) end
function ChatManager.processExportNPC(_, sParams) end
function ChatManager.createBaseMessage(rSource, sUser) end
function ChatManager.Message(msgtxt, broadcast, rActor) end
function ChatManager.SystemMessage(sText) end
function ChatManager.SystemMessageResource(sRes, ...) end
function ChatManager.processWhisper(_, sParams) end
function ChatManager.processReply(_, sParams) end
function ChatManager.processWhisperHelper(sRecipient, sMessage) end
function ChatManager.handleWhisper(msgOOB) end
function ChatManager.sendWhisperToID(sIdentity) end
function ChatManager.sendWhisperToGM() end
function ChatManager.sendWhisperToName(sName) end
