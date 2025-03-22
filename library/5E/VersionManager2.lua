---@meta VersionManager2

---@class VersionManager2

VersionManager2 = {}

function VersionManager2.onInit() end
function VersionManager2.onCharImport(nodePC) end
function VersionManager2.onImport(node) end
function VersionManager2.onModuleLoad(sModule) end
function VersionManager2.updateChar(nodePC, nVersion) end
function VersionManager2.updateCampaign() end
function VersionManager2.updateModule(sModule, nVersion) end
function VersionManager2.migrateItem8(nodeItem, nodeRoot) end
function VersionManager2.convertItems8(nodeRoot) end
function VersionManager2.migrateChar8(nodeChar) end
function VersionManager2.convertPregenCharacters8(nodeRoot) end
function VersionManager2.convertCharacters8() end
function VersionManager2.migrateChar7(nodeChar) end
function VersionManager2.convertPregenCharacters7(nodeRoot) end
function VersionManager2.convertCharacters7() end
function VersionManager2.migrateEncounter6(nodeRecord) end
function VersionManager2.convertEncounters6() end
function VersionManager2.migrateChar5(nodeChar) end
function VersionManager2.convertPregenCharacters5(nodeRoot) end
function VersionManager2.convertCharacters5() end
function VersionManager2.convertPSEnc4() end
function VersionManager2.migrateChar2(nodeChar) end
function VersionManager2.convertCharacters2() end
