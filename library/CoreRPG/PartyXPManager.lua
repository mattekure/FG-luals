---@meta PartyXPManager

---@class PartyXPManager

PartyXPManager = {}

function PartyXPManager.onInit() end
function PartyXPManager.setRecordTypeInfo(sRecordType, tData) end
function PartyXPManager.setRecordTypeXPField(sRecordType, sField) end
function PartyXPManager.getRecordTypePSPath(sRecordType) end
function PartyXPManager.getRecordTypeXPField(sRecordType) end
function PartyXPManager.setActorTypeInfo(sRecordType, tData) end
function PartyXPManager.getActorFieldXP(sRecordType) end
function PartyXPManager.onDrop(draginfo) end
function PartyXPManager.awardRecordsToParty(sRecordType, nodeEntry) end
function PartyXPManager.awardXP(nXP) end
function PartyXPManager.awardXPtoPC(rActor, nXP) end
