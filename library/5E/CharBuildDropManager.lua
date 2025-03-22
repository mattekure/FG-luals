---@meta CharBuildDropManager

---@class CharBuildDropManager

CharBuildDropManager = {}

function CharBuildDropManager.addInfoDB(nodeChar, sClass, sRecord) end
function CharBuildDropManager.addSkillRecord(nodeChar, sRecord) end
function CharBuildDropManager.addAdvLogDrop(nodeChar, sRecord) end
function CharBuildDropManager.helperBuildAddStructure(nodeChar, sClass, sRecord, tData) end
function CharBuildDropManager.helperBuildGetText(rAdd) end
function CharBuildDropManager.handleAbilitiesField(rAdd) end
function CharBuildDropManager.handleSizeField2024(rAdd) end
function CharBuildDropManager.handleSpeedField2024(rAdd) end
function CharBuildDropManager.handleSpeciesLanguage2024(rAdd) end
function CharBuildDropManager.handleClassSavesField(rAdd) end
function CharBuildDropManager.handleClassSkillsField(rAdd) end
function CharBuildDropManager.handleClassArmorField(rAdd) end
function CharBuildDropManager.handleClassWeaponsField(rAdd) end
function CharBuildDropManager.handleClassToolsField(rAdd) end
function CharBuildDropManager.handleBackgroundSkillsField(rAdd) end
function CharBuildDropManager.handleBackgroundToolsField(rAdd) end
function CharBuildDropManager.handleBackgroundLanguagesField(rAdd) end
function CharBuildDropManager.addFeature(rAdd) end
function CharBuildDropManager.checkFeatureSkipAdd(rAdd) end
function CharBuildDropManager.addFeatureStandard(rAdd) end
function CharBuildDropManager.checkFeatureSkipStandardAdd(rAdd) end
function CharBuildDropManager.checkFeatureSpecialHandling(rAdd) end
function CharBuildDropManager.checkFeatureDescription(rAdd) end
function CharBuildDropManager.helperCheckFeatureSkills(rAdd) end
function CharBuildDropManager.helperCheckFeatureArmorProf(rAdd) end
function CharBuildDropManager.helperCheckFeatureWeaponProf(rAdd) end
function CharBuildDropManager.helperCheckFeatureToolProf(rAdd) end
function CharBuildDropManager.helperCheckFeatureLanguages(rAdd) end
function CharBuildDropManager.helperCheckFeatureSpells(rAdd) end
function CharBuildDropManager.helperCheckFeatureSpellsAddPowerGroup(nodeChar, s, sSpellGroup) end
function CharBuildDropManager.checkFeatureActions(rAdd) end
function CharBuildDropManager.checkBackgroundFeatureActions(rAdd) end
function CharBuildDropManager.checkClassFeatureActions(rAdd) end
function CharBuildDropManager.checkFeatActions(rAdd) end
function CharBuildDropManager.checkSpeciesTraitActions(rAdd) end
function CharBuildDropManager.helperCheckActions(rAdd, tAction) end
function CharBuildDropManager.helperCheckActionsAdd(rAdd, tAction, sPowerName) end
function CharBuildDropManager.helperCheckActionsAdd2(rActionsAdd) end
function CharBuildDropManager.handleClassFeatureChoices(rAdd) end
function CharBuildDropManager.helperCheckChoices(rAdd, tAction) end
function CharBuildDropManager.helperCheckChoicesWizard(rAdd, tAction) end
function CharBuildDropManager.helperCheckChoicesWizardChoiceType(rAdd, tAction) end
function CharBuildDropManager.helperCheckChoicesWizardFollowOn(rAdd, tAction) end
function CharBuildDropManager.helperCheckChoicesDrop(rAdd, tAction) end
function CharBuildDropManager.pickInitialAbilityAdjust(nodeChar, tAbilities, bSource2024) end
function CharBuildDropManager.helperOnInitialAbilityAdjTypeSelect(tSelection, tData) end
function CharBuildDropManager.helperInitialAbilityAdjBy2Then1(nodeChar, tAbilities) end
function CharBuildDropManager.helperOnInitialAbilityAdjBy2(tSelection, tData) end
function CharBuildDropManager.helperOnInitialAbilityAdjThen1(tSelection, tData) end
function CharBuildDropManager.helperInitialAbilityAdj3By1(nodeChar, tAbilities) end
function CharBuildDropManager.helperOnInitialAbilityAdj3By1(tSelection, tData) end
function CharBuildDropManager.pickAbility(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onAbilitySelect(tSelection, tData) end
function CharBuildDropManager.getAbilityOptions(nodeChar, nAbilityMax) end
function CharBuildDropManager.pickAbilities2014(nodeChar, tBase, tAbilitySelect) end
function CharBuildDropManager.helperPickAbilities2014(nodeChar, tAbilitySelect, bFront) end
function CharBuildDropManager.onAbilitiesSelect2014(tSelection, tData) end
function CharBuildDropManager.getDefaultAbilityOptions2014(sSelectedAbility) end
function CharBuildDropManager.pickASIOrFeat(nodeChar, bSource2024) end
function CharBuildDropManager.helperOnASIOrFeatSelect(tSelection, tData) end
function CharBuildDropManager.pickAbilityAdjust(nodeChar, tData) end
function CharBuildDropManager.helperOnAbilityAdjTypeSelect(tSelection, tData) end
function CharBuildDropManager.helperAbilityAdjBy2(nodeChar, bSource2024) end
function CharBuildDropManager.helperAbilityAdj2By1(nodeChar, bSource2024) end
function CharBuildDropManager.helperOnAbilityAdj(tSelection, tData) end
function CharBuildDropManager.pickSize(nodeChar, tSizes) end
function CharBuildDropManager.onSizeSelect(tSelection, tData) end
function CharBuildDropManager.pickSaveProficiency(nodeChar, tOptions, nPicks) end
function CharBuildDropManager.onSaveSelect(tSelection, tData) end
function CharBuildDropManager.getSaveProficiencyOptions(nodeChar) end
function CharBuildDropManager.helperGetSaveProficiencyOptionsFilter(nodeChar, tOptions) end
function CharBuildDropManager.pickSkill(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onSkillSelect(tSelection, tData) end
function CharBuildDropManager.getSkillProficiencyOptions(nodeChar) end
function CharBuildDropManager.helperGetSkillProficiencyOptionsFilterAndLink(nodeChar, tOptions) end
function CharBuildDropManager.helperGetSkillOptionsLinks(tOptions) end
function CharBuildDropManager.pickSkillExpertise(nodeChar, tOptions, nPicks) end
function CharBuildDropManager.onSkillExpertiseSelect(tSelection, tData) end
function CharBuildDropManager.getSkillExpertiseOptions(nodeChar) end
function CharBuildDropManager.helperGetSkillExpertiseOptionsFilterAndLink(nodeChar, tOptions) end
function CharBuildDropManager.pickSkillIncrease(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onSkillIncreaseSelect(tSelection, tData) end
function CharBuildDropManager.getSkillIncreaseOptions(nodeChar) end
function CharBuildDropManager.helperGetSkillIncreaseOptionsFilterAndLink(nodeChar, tOptions) end
function CharBuildDropManager.pickToolProficiencyBySubtype(nodeChar, s, nPicks) end
function CharBuildDropManager.onToolProfSelect(tSelection, tData) end
function CharBuildDropManager.pickProficiency(nodeChar, sType, tOptions, nPicks) end
function CharBuildDropManager.onProficiencySelect(tSelection, tData) end
function CharBuildDropManager.pickFeat(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onFeatSelect(tSelection, tData) end
function CharBuildDropManager.getFeatOptions(nodeChar, tData) end
function CharBuildDropManager.helperGetFeatOptionsFilter(nodeChar, tOptions) end
function CharBuildDropManager.pickLanguage(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onLanguageSelect(tSelection, tData) end
function CharBuildDropManager.getLanguageOptions(nodeChar) end
function CharBuildDropManager.helperGetLanguageOptionsFilter(nodeChar, tOptions) end
function CharBuildDropManager.pickSpellGroupAbility(rAdd, fnCallback) end
function CharBuildDropManager.onSpellGroupAbilitySelect(tSelection, tData) end
function CharBuildDropManager.chooseSpellGroupAbility(nodePowerGroup) end
function CharBuildDropManager.onSpellGroupAbilityChoice(tSelection, tData) end
function CharBuildDropManager.getSpellOptionsByFilter(tFilters, tData) end
function CharBuildDropManager.pickSpellByFilter(rAdd, tFilters, nPicks, tData) end
function CharBuildDropManager.pickSpell(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onSpellSelect(tSelection, tData) end
function CharBuildDropManager.helperGetSpellOptionsFilter(nodeChar, sGroup, tOptions, tData) end
function CharBuildDropManager.pickClassFeatureChoiceByType(rAdd, sType, nPicks) end
function CharBuildDropManager.pickClassFeatureChoice(nodeChar, tOptions, nPicks, tData) end
function CharBuildDropManager.onClassFeatureChoiceSelect(tSelection, tData) end
