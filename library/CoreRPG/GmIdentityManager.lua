---@meta GmIdentityManager

---@class GmIdentityManager

GmIdentityManager = {}

function GmIdentityManager.onTabletopInit() end
function GmIdentityManager.onChatDeliverMessage(msg, sMode) end
function GmIdentityManager.slashCommandHandlerId(_, sParams) end
function GmIdentityManager.slashCommandHandlerGmId(_, sParams) end
function GmIdentityManager.setCurrent(sName) end
function GmIdentityManager.getCurrent() end
function GmIdentityManager.getGMIdentity() end
function GmIdentityManager.activateGMIdentity() end
function GmIdentityManager.existsIdentity(name) end
function GmIdentityManager.addIdentity(sName, bIsGM) end
function GmIdentityManager.removeIdentity(sName) end
