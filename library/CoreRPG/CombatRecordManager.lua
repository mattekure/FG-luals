---@meta CombatRecordManager

---@class CombatRecordManager

CombatRecordManager = {}

function CombatRecordManager.onInit() end
function CombatRecordManager.setRecordTypeCallback(sRecordType, fn) end
function CombatRecordManager.getRecordTypeCallback(sRecordType) end
function CombatRecordManager.hasRecordTypeCallback(sRecordType) end
function CombatRecordManager.onRecordTypeEvent(sRecordType, tCustom) end
function CombatRecordManager.setRecordTypePostAddCallback(sRecordType, fn) end
function CombatRecordManager.getRecordTypePostAddCallback(sRecordType) end
function CombatRecordManager.hasRecordTypePostAddCallback(sRecordType) end
function CombatRecordManager.onRecordTypePostAddEvent(sRecordType, tCustom) end
function CombatRecordManager.addStandardCombatRecordTypes() end
function CombatRecordManager.addStandardVehicleCombatRecordType() end
function CombatRecordManager.handleStandardCombatAdd(tCustom) end
function CombatRecordManager.handleStandardCombatAddFields(tCustom) end
function CombatRecordManager.handleStandardCombatAddToken(tCustom) end
function CombatRecordManager.handleStandardCombatAddSpaceReach(tCustom) end
function CombatRecordManager.handleStandardCombatAddPlacement(tCustom) end
function CombatRecordManager.handleStandardCombatAddPC(tCustom) end
function CombatRecordManager.handleStandardCombatAddPCFields(tCustom) end
function CombatRecordManager.handleStandardCombatAddPCToken(tCustom) end
function CombatRecordManager.handleCombatAddInitDnD(tCustom) end
function CombatRecordManager.onPCAdd(tCustom) end
function CombatRecordManager.addPC(tCustom) end
function CombatRecordManager.onNPCAdd(tCustom) end
function CombatRecordManager.addNPC(tCustom) end
function CombatRecordManager.addNPCHelper(tCustom) end
function CombatRecordManager.onVehicleAdd(tCustom) end
function CombatRecordManager.addVehicle(tCustom) end
function CombatRecordManager.onBattleAdd(tCustom) end
function CombatRecordManager.addBattle(tCustom) end
function CombatRecordManager.clearBattlePlacementTokens(tCustom) end
function CombatRecordManager.addBattleHelper(tCustom) end
function CombatRecordManager.getBattleEntryData(nodeBattleEntry) end
function CombatRecordManager.handleBattleModuleLoad(tCustom) end
function CombatRecordManager.onBattleNPCLoadCallback(tCustom) end
function CombatRecordManager.onBattleButtonAdd(w) end
