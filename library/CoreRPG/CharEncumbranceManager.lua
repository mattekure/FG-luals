---@meta CharEncumbranceManager

---@class CharEncumbranceManager

CharEncumbranceManager = {}

function CharEncumbranceManager.onInit() end
function CharEncumbranceManager.onTabletopInit() end
function CharEncumbranceManager.onClose() end
function CharEncumbranceManager.performInit() end
function CharEncumbranceManager.addCustomCalc(fnEncumbranceCalc) end
function CharEncumbranceManager.addStandardCalc() end
function CharEncumbranceManager.isEnabled() end
function CharEncumbranceManager.setEncumbranceField(sFieldName) end
function CharEncumbranceManager.getEncumbranceField() end
function CharEncumbranceManager.enableEncumbranceHandlers() end
function CharEncumbranceManager.disableEncumbranceHandlers() end
function CharEncumbranceManager.onCurrencyOptionUpdate() end
function CharEncumbranceManager.onCurrencyUpdate() end
function CharEncumbranceManager.onCharItemFieldUpdate(nodeItem) end
function CharEncumbranceManager.onCharItemDelete(nodeInventory) end
function CharEncumbranceManager.updateAllCharacters() end
function CharEncumbranceManager.updateEncumbrance(nodeChar) end
function CharEncumbranceManager.calcDefaultEncumbrance(nodeChar) end
function CharEncumbranceManager.calcDefaultInventoryEncumbrance(nodeChar) end
function CharEncumbranceManager.calcDefaultCurrencyEncumbrance(nodeChar) end
function CharEncumbranceManager.setDefaultEncumbranceValue(nodeChar, nEncumbrance) end
