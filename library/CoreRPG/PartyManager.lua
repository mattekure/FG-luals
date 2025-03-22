---@meta PartyManager

---@class PartyManager

PartyManager = {}

function PartyManager.onInit() end
function PartyManager.onTabletopInit() end
function PartyManager.getPartyNodes() end
function PartyManager.getPartyCount() end
function PartyManager.getPartyActors() end
function PartyManager.mapChartoPS(nodeChar) end
function PartyManager.mapPStoChar(nodePS) end
function PartyManager.onCharDelete(nodeChar) end
function PartyManager.onLinkUpdated(nodeField) end
function PartyManager.onLinkDeleted(nodeField) end
function PartyManager.onEntryDeleted(nodePS) end
function PartyManager.linkRecordField(nodeRecord, nodePS, sField, sType, sPSField) end
function PartyManager.linkPCFields(nodePS) end
function PartyManager.onDrop(draginfo) end
function PartyManager.addChar(nodeChar) end
