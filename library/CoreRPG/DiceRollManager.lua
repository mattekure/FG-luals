---@meta DiceRollManager

---@class DiceRollManager

DiceRollManager = {}

function DiceRollManager.onTabletopInit() end
function DiceRollManager.onTabletopClose() end
function DiceRollManager.loadSettings() end
function DiceRollManager.saveSettings() end
function DiceRollManager.helperAddDice(tTargetDice, tSourceDice, tData, tDiceSkin) end
function DiceRollManager.registerDamageTypeMode(sMode) end
function DiceRollManager.registerDamageKey(sDefaultKey) end
function DiceRollManager.registerDamageTypeKey(sDamageType, sDefaultKey) end
function DiceRollManager.addDamageDice(tTargetDice, tSourceDice, tData) end
function DiceRollManager.getDamageActionDiceSkin(tData) end
function DiceRollManager.registerHealKey(sDefaultKey) end
function DiceRollManager.registerHealTypeKey(sHealType, sDefaultKey) end
function DiceRollManager.addHealDice(tTargetDice, tSourceDice, tData) end
function DiceRollManager.getHealActionDiceSkin(tData) end
function DiceRollManager.getDiceSkinDefaults(sKey) end
function DiceRollManager.setDiceSkinDefaults(sKey, tDefaults) end
function DiceRollManager.resolveDiceSkinDefaults(sKey) end
function DiceRollManager.hasActions() end
function DiceRollManager.getActionData() end
function DiceRollManager.getAction(sKey) end
function DiceRollManager.setAction(sKey, tData) end
function DiceRollManager.getActionDefault(sKey) end
function DiceRollManager.setActionDefault(sKey, sDefaultKey) end
function DiceRollManager.getActionSkipDefault(sKey) end
function DiceRollManager.setActionSkipDefault(sKey, bSkipDefault) end
function DiceRollManager.getActionSkin(sKey) end
function DiceRollManager.setActionSkin(sKey, tCustom) end
function DiceRollManager.getActionModeSkin(sKey, sMode) end
function DiceRollManager.setActionModeSkin(sKey, sMode, tCustom) end
function DiceRollManager.getActionAllowedModes(sKey) end
function DiceRollManager.resolveAction(sKey, sMode) end
function DiceRollManager.resolveActionDefault(sKey) end
function DiceRollManager.getActorDice(tSourceDice, rActor, tData) end
function DiceRollManager.addActorDice(tTargetDice, tSourceDice, rActor, tData) end
function DiceRollManager.getActorDiceSkin(rActor) end
function DiceRollManager.setActorTypeFunction(fn) end
function DiceRollManager.getActorTypeFunction() end
function DiceRollManager.registerActorSupportDnD() end
function DiceRollManager.registerStandardActorTypeData() end
function DiceRollManager.getActorTypeData() end
function DiceRollManager.getActorType(sKey) end
function DiceRollManager.setActorType(sKey, tData) end
function DiceRollManager.getActorTypeDefault(sKey) end
function DiceRollManager.getActorTypeSkipDefault(sKey) end
function DiceRollManager.setActorTypeSkipDefault(sKey, bSkipDefault) end
function DiceRollManager.getActorTypeSkin(sKey) end
function DiceRollManager.setActorTypeSkin(sKey, tData) end
function DiceRollManager.getActorTypeDefaultSkin(sKey) end
function DiceRollManager.resolveActorType(sKey) end
function DiceRollManager.resolveActorTypeDefault(sKey) end
function DiceRollManager.getActorSystemData() end
function DiceRollManager.getActorSystem(sKey) end
function DiceRollManager.setActorSystem(sKey, tData) end
function DiceRollManager.getActorSystemDefault(sKey) end
function DiceRollManager.getActorSystemSkipDefault(sKey) end
function DiceRollManager.setActorSystemSkipDefault(sKey, bSkipDefault) end
function DiceRollManager.getActorSystemDefaultSkin(sKey) end
function DiceRollManager.getActorSystemSkin(sKey) end
function DiceRollManager.setActorSystemSkin(sKey, tData) end
function DiceRollManager.resolveActorSystem(sKey) end
function DiceRollManager.getActorCustomData() end
function DiceRollManager.getActorCustom(sKey) end
function DiceRollManager.setActorCustom(sKey, tData) end
function DiceRollManager.addActorCustom(sKey) end
function DiceRollManager.getActorCustomSkin(sKey) end
function DiceRollManager.setActorCustomSkin(sKey, tCustom) end
function DiceRollManager.resolveActorCustom(sKey) end
function DiceRollManager.setDiceSkinKey(sKey, v) end
function DiceRollManager.resolveDiceSkinKey(sKey) end
