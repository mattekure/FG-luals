---@meta PartyLootManager

---@class PartyLootManager

PartyLootManager = {}

function PartyLootManager.addItemPartyActorPath(s) end
function PartyLootManager.removeItemPartyActorPath(s) end
function PartyLootManager.getItemPartyActorPaths() end
function PartyLootManager.addCurrencyPartyActorPath(s) end
function PartyLootManager.removeCurrencyPartyActorPath(s) end
function PartyLootManager.getCurrencyPartyActorPaths() end
function PartyLootManager.populate() end
function PartyLootManager.distribute() end
function PartyLootManager.distributeParcelAssignments() end
function PartyLootManager.distributeParcelCoins() end
function PartyLootManager.rebuild() end
function PartyLootManager.buildPartyInventory() end
function PartyLootManager.buildPartyCoins() end
function PartyLootManager.sellItems() end
function PartyLootManager.identifyItems() end
function PartyLootManager.getPartyMemberRecordsForItems() end
function PartyLootManager.getPartyMemberRecordsForCurrency() end
function PartyLootManager.addPartyMemberItem(rActor, nodeItem, nAssign) end
function PartyLootManager.addPartyMemberCurrency(rActor, sCoin, nCoin) end
