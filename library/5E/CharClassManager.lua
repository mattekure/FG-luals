---@meta CharClassManager

---@class CharClassManager

CharClassManager = {}

function CharClassManager.addClass(nodeChar, sRecord, tData) end
function CharClassManager.addClassProficiency(nodeChar, sRecord, tData) end
function CharClassManager.addClassFeature(nodeChar, sRecord, tData) end
function CharClassManager.addClassFeatureChoice(nodeChar, sRecord, tData) end
function CharClassManager.getSubclassOptions(nodeClass) end
function CharClassManager.helperGetClassEmbeddedSubclassOption(nodeClass, tOptions) end
function CharClassManager.getSubclassLevel(nodeClass) end
function CharClassManager.findSubclassByName(nodeClass, sSubclass) end
function CharClassManager.getClassPowerGroupByName(sClassName) end
function CharClassManager.getClassName(rAdd) end
function CharClassManager.getClassSpellGroup(rAdd) end
function CharClassManager.helperAddClassMain(rAdd) end
function CharClassManager.helperAddClassLevel(rAdd) end
function CharClassManager.helperAddClassHP(rAdd) end
function CharClassManager.helperAddClassProficiencies(rAdd) end
function CharClassManager.helperAddClassFeatures(rAdd) end
function CharClassManager.helperGetClassBaseFeatures(rAdd) end
function CharClassManager.helperAddClassBaseFeatures(rAdd) end
function CharClassManager.helperAddSubclassFeatures(rAdd) end
function CharClassManager.helperGetLegacySubclassFeatures(rAdd) end
function CharClassManager.helperHasCharClassLegacySpecialization(nodeChar, sSubclass) end
function CharClassManager.helperAddClassGetCharSpellData(rAdd) end
function CharClassManager.helperAddClassUpdateSpellData(rAdd) end
function CharClassManager.helperAddClassAdjustSpellData(rAdd) end
function CharClassManager.helperAddClassAdjustSpellSlots(rAdd) end
function CharClassManager.helperAddClassSpells(rAdd) end
function CharClassManager.helperAddClassSpellsPrepared(tSpellData) end
function CharClassManager.helperAddClassSpellsKnown(tSpellData) end
function CharClassManager.helperAddClassSpellsSavant(tSpellData) end
function CharClassManager.helperCalcSpellsKnownPreparedFromSpellGroup(rAdd) end
function CharClassManager.helperCalcMaxSpellLevelFromCasterLevel(n) end
function CharClassManager.helperCalcSpellcastingLevel(tCharClassMagicData) end
function CharClassManager.helperCalcPactMagicLevel(tCharClassMagicData) end
function CharClassManager.helperGetSpellcastingSlotChange(nOldLevel, nNewLevel) end
function CharClassManager.helperGetPactMagicSlotChange(nOldLevel, nNewLevel) end
function CharClassManager.helperCheckSubclass(rAdd) end
function CharClassManager.helperOnAddSubclassChoice(tSelection, rAdd) end
function CharClassManager.helperAddClassProficiencyMain(rAdd) end
function CharClassManager.getFeatureClassName(rAdd) end
function CharClassManager.getFeatureSpellGroup(rAdd) end
function CharClassManager.getFeaturePowerGroup(rAdd) end
function CharClassManager.getFeatureChoiceDisplayName(node) end
function CharClassManager.helperAddClassFeatureMain(rAdd) end
function CharClassManager.checkClassFeatureSkipAdd(rAdd) end
function CharClassManager.addClassFeatureStandard(rAdd) end
function CharClassManager.checkClassFeatureSpecialHandling(rAdd) end
function CharClassManager.helperCheckClassFeatureSpecialHandling2024(rAdd) end
function CharClassManager.helperCheckClassFeatureSpecialHandling2014(rAdd) end
function CharClassManager.helperAddClassFeatureSpellcasting(rAdd) end
function CharClassManager.helperAddClassFeaturePactMagic(rAdd) end
function CharClassManager.helperAddClassFeatureEpicBoonDrop2024(rAdd) end
function CharClassManager.helperAddClassFeatureExpertise(rAdd) end
function CharClassManager.helperAddClassFeatureUnarmoredDefense(rAdd) end
function CharClassManager.helperAddClassFeatureBodyAndMind(rAdd) end
function CharClassManager.helperAddClassFeatureMagicalDiscoveries(rAdd) end
function CharClassManager.helperAddClassFeatureFightingStyle(rAdd) end
function CharClassManager.helperAddClassFeatureDeftExplorer(rAdd) end
function CharClassManager.helperAddClassFeatureIronMind(rAdd) end
function CharClassManager.helperAddClassFeatureDraconicResilience(rAdd) end
function CharClassManager.helperAddClassFeatureEldritchInvocationLessonsOfTheFirstOnes(rAdd) end
function CharClassManager.helperAddClassFeatureEldritchInvocationPactOfTheTome(rAdd) end
function CharClassManager.helperAddClassFeatureScholar(rAdd) end
function CharClassManager.applyDraconicResilience(nodeChar) end
function CharClassManager.applyAttunementAdjust(nodeChar, n) end
