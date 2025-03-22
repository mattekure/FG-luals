---@meta DiceSkinManager

---@class DiceSkinManager

DiceSkinManager = {}

function DiceSkinManager.onInit() end
function DiceSkinManager.getAllDiceSkins() end
function DiceSkinManager.getDiceSkinInfo(tColor) end
function DiceSkinManager.getDiceSkinInfoByID(nID) end
function DiceSkinManager.getOwnedDiceSkinIDs() end
function DiceSkinManager.isDiceSkinOwned(tColor) end
function DiceSkinManager.isDiceSkinOwnedByID(nID) end
function DiceSkinManager.isDiceSkinTintable(tColor) end
function DiceSkinManager.isDiceSkinTintableByID(nID) end
function DiceSkinManager.getDiceSkinGroups() end
function DiceSkinManager.getDiceSkinGroup(nID) end
function DiceSkinManager.getDiceSkinGroupName(nID) end
function DiceSkinManager.getDiceSkinName(tColor) end
function DiceSkinManager.getDiceSkinNameByID(nID) end
function DiceSkinManager.getDiceSkinIcon(tColor) end
function DiceSkinManager.getDiceSkinIconByID(nID) end
function DiceSkinManager.convertStringToTable(sDiceSkin) end
function DiceSkinManager.convertTableToString(tDiceSkin) end
function DiceSkinManager.populateDiceSelectWindow(w) end
function DiceSkinManager.setupDiceSelectButton(cButton, nID) end
function DiceSkinManager.setupButtonTintableWidget(cButton, nID) end
function DiceSkinManager.setupButtonGeneralWidgets(cButton, nID) end
function DiceSkinManager.setupCustomControl(c, tColor, bDisabled) end
function DiceSkinManager.setupControlBaseWidget(c, tColor, bDisabled) end
function DiceSkinManager.setupControlColorWidgets(c, tColor, bDisabled) end
function DiceSkinManager.setupControlGeneralWidgets(c, tColor, bDisabled) end
function DiceSkinManager.getDiceSkinGroupStoreID(sGroupID) end
function DiceSkinManager.onDiceSelectButtonActivate(nID) end
function DiceSkinManager.onDiceSelectButtonDrag(draginfo, nID) end
function DiceSkinManager.onDiceSkinRandomize() end
function DiceSkinManager.onDiceColorRandomize() end
