---@meta CharBuildManager

---@class CharBuildManager

CharBuildManager = {}

function CharBuildManager.convertSingleNumberTextToNumber(s, nDefault) end
function CharBuildManager.parseOptionsFromString(s) end
function CharBuildManager.parseOptionsFromText(s) end
function CharBuildManager.parseAbilitiesFromString(s) end
function CharBuildManager.parseSizesFromString(s) end
function CharBuildManager.getSkillNames() end
function CharBuildManager.getWeaponNames(bIs2024) end
function CharBuildManager.getToolNamesByType(vType, bIs2024) end
function CharBuildManager.getLanguageNames() end
function CharBuildManager.getFeatNames(bIs2024) end
function CharBuildManager.getFeatNamesByCategory(sCategory) end
function CharBuildManager.filterAbilities(tOptions) end
function CharBuildManager.filterSkills(tOptions) end
function CharBuildManager.processSkillDataOptions(tOptions, bIs2024) end
function CharBuildManager.getSkillsFromText2024(s) end
function CharBuildManager.getSkillsFromText2014(s) end
function CharBuildManager.processArmorProfDataOptions(tOptions, bIs2024) end
function CharBuildManager.getArmorProfFromText2024(s) end
function CharBuildManager.getArmorProfFromText2014(s) end
function CharBuildManager.processWeaponProfDataOptions(tOptions, bIs2024) end
function CharBuildManager.getWeaponProfFromText2024(s) end
function CharBuildManager.getWeaponProfFromText2014(s) end
function CharBuildManager.processToolProfDataOptions(tOptions, bIs2024) end
function CharBuildManager.getToolProfFromText2024(s) end
function CharBuildManager.getToolProfFromText2014(s) end
function CharBuildManager.processLanguageDataOptions(tOptions, bIs2024) end
function CharBuildManager.getLanguagesFromText2024(s) end
function CharBuildManager.getLanguagesFromText2014(s) end
function CharBuildManager.getSpellsFromText2024(s) end
function CharBuildManager.getSpellsFromText2014(s) end
function CharBuildManager.parseSkillsField(s, bSource2024) end
function CharBuildManager.parseSkillsField2024(s) end
function CharBuildManager.parseSkillsField2014(s) end
function CharBuildManager.parseArmorField(s, bSource2024) end
function CharBuildManager.parseArmorField2024(s) end
function CharBuildManager.parseArmorField2014(s) end
function CharBuildManager.helperParseArmorField(s, bSource2024) end
function CharBuildManager.parseWeaponField(s, bSource2024) end
function CharBuildManager.parseWeaponField2024(s) end
function CharBuildManager.parseWeaponField2014(s) end
function CharBuildManager.parseToolsField(s, bSource2024) end
function CharBuildManager.parseToolsField2024(s) end
function CharBuildManager.parseToolsField2014(s) end
function CharBuildManager.parseLanguagesField(s, bSource2024) end
function CharBuildManager.parseLanguagesField2014(s) end
function CharBuildManager.getCommonSkills(tOverride, s, bIs2024) end
function CharBuildManager.getCommonArmorProf(tOverride, s, bIs2024) end
function CharBuildManager.getCommonWeaponProf(tOverride, s, bIs2024) end
function CharBuildManager.getCommonToolProf(tOverride, s, bIs2024) end
function CharBuildManager.getCommonLanguages(tOverride, s, bIs2024) end
function CharBuildManager.getCommonSpells(tOverride, s, bIs2024) end
function CharBuildManager.getClassFeatureOverrideData(sFeatureName, bIs2024) end
function CharBuildManager.getClassFeatureSkills(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureArmorProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureWeaponProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureToolProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureLanguages(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureSpells(sFeatureName, s, bIs2024) end
function CharBuildManager.getClassFeatureSpellcastingData(tData) end
function CharBuildManager.getSpeciesTraitOverrideData(sTraitName, bIs2024) end
function CharBuildManager.getSpeciesTraitSkills(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesTraitArmorProf(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesTraitWeaponProf(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesTraitToolProf(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesTraitLanguages(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesTraitSpells(sTraitName, s, bIs2024) end
function CharBuildManager.getSpeciesLanguages2024() end
function CharBuildManager.getBackgroundFeatureLanguages(sFeatureName, s, bIs2024) end
function CharBuildManager.getFeatOverrideData(sFeatureName, bIs2024) end
function CharBuildManager.getFeatSkills(sFeat, s, bIs2024) end
function CharBuildManager.getFeatArmorProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getFeatWeaponProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getFeatToolProf(sFeatureName, s, bIs2024) end
function CharBuildManager.getFeatLanguages(sFeatureName, s, bIs2024) end
function CharBuildManager.getFeatSpells(sFeatureName, s, bIs2024) end
function CharBuildManager.helperAddEquipmentKit(rAdd) end
function CharBuildManager.getRecordEquipmentKitOptions2024(nodeRecord, sListPath) end
function CharBuildManager.helperOnEquipmentKitSelect2024(tSelection, tData) end
function CharBuildManager.helperAddEquipmentKitOption(rAdd) end
