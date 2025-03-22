---@meta CurrencyManager

---@class CurrencyManager

CurrencyManager = {}

function CurrencyManager.onTabletopInit() end
function CurrencyManager.populateCampaignCurrencies() end
function CurrencyManager.addCampaignCurrencyHandlers() end
function CurrencyManager.refreshCampaignCurrencies() end
function CurrencyManager.sortCampaignCurrencies(a,b) end
function CurrencyManager.sortCampaignCurrenciesUsingNames(s1, s2) end
function CurrencyManager.setDefaultCurrency(s) end
function CurrencyManager.getDefaultCurrency() end
function CurrencyManager.setCurrencyPaths(sRecordType, tPaths) end
function CurrencyManager.getCurrencyPaths(sRecordType) end
function CurrencyManager.setEncumbranceFields(sRecordType, tFields) end
function CurrencyManager.getEncumbranceFields(sRecordType) end
function CurrencyManager.registerCallback(fn) end
function CurrencyManager.unregisterCallback(fn) end
function CurrencyManager.makeCallback() end
function CurrencyManager.getCurrencyData() end
function CurrencyManager.getCurrencies() end
function CurrencyManager.getCurrencyRecord(s) end
function CurrencyManager.getCurrencyMatch(s) end
function CurrencyManager.getCurrencyWeight(s) end
function CurrencyManager.getCurrencyValue(s) end
function CurrencyManager.populateCharCurrencies(nodeChar) end
function CurrencyManager.addRecordCurrency(nodeRecord, sNewCurrency, nNewCurrency) end
function CurrencyManager.addActorCurrency(nodeActor, sNewCurrency, nNewCurrency) end
function CurrencyManager.addCharCurrency(nodeActor, sNewCurrency, nNewCurrency) end
function CurrencyManager.parseCurrencyString(s, bExistsOnly) end
