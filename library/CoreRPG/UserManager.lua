---@meta UserManager

---@class UserManager

UserManager = {}

function UserManager.onInit() end
function UserManager.onTabletopInit() end
function UserManager.onUserIdentityStateChange(sIdentity, sUser, sKey, sValue) end
function UserManager.onDiceSkinHotKeyActivate(draginfo) end
function UserManager.onDiceSkinChatDrop(draginfo) end
function UserManager.helperDragInfoActivate(draginfo) end
function UserManager.convertDiceSkinStringToTable(s) end
function UserManager.activatePlayerID(sCharID) end
function UserManager.getColorsFromCurrentID() end
function UserManager.setColorsFromCharID(sCharID) end
function UserManager.setColorsToCurrentID(tColor) end
function UserManager.getColorsFromCharIDRegistry(sCharID) end
function UserManager.setColorsToCharIDRegistry(sCharID, tParam) end
function UserManager.registerColorCallback(fn) end
function UserManager.unregisterColorCallback(fn) end
function UserManager.onColorChanged() end
function UserManager.refreshColor() end
function UserManager.getColor() end
function UserManager.getIdentityColor() end
function UserManager.setIdentityColor(sColor) end
function UserManager.getDiceBodyColor() end
function UserManager.setDiceBodyColor(sColor) end
function UserManager.getDiceTextColor() end
function UserManager.setDiceTextColor(sColor) end
function UserManager.getDiceSkin() end
function UserManager.setDiceSkin(nID) end
function UserManager.setDiceSkinTable(tDiceSkin) end
