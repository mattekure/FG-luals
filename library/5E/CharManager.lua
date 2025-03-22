---@meta CharManager

---@class CharManager

CharManager = {}

function CharManager.onInit() end
function CharManager.outputUserMessage(sResource, ...) end
function CharManager.onCharItemAdd(nodeItem) end
function CharManager.onCharItemDelete(nodeItem) end
function CharManager.onCharInventoryArmorCalcIfCarried(nodeItem, sField) end
function CharManager.onCharInventoryArmorCalc(nodeItem, sField) end
function CharManager.rest(nodeChar, bLong) end
function CharManager.resetHealth(nodeChar, bLong) end
function CharManager.messageInspiration(nodeChar, nAdj) end
function CharManager.onClassLinkPressed(nodeCharClass) end
function CharManager.onSubclassLinkPressed(nodeCharClass) end
function CharManager.onBackgroundLinkPressed(nodeChar) end
function CharManager.onSpeciesLinkPressed(nodeChar) end
function CharManager.onAncestryLinkPressed(nodeChar) end
function CharManager.helperOpenLinkRecord(sRecordType, sRecord) end
function CharManager.helperOpenAltLinkRecord(sRecordType, sName, bIs2024) end
function CharManager.helperOpenLinkRecordFail(sRecordType, sRecord) end
function CharManager.hasTrait(nodeChar, s) end
function CharManager.hasFeature(nodeChar, s) end
function CharManager.hasFeat(nodeChar, s) end
function CharManager.hasFeat2024(nodeChar, s) end
function CharManager.hasFeat2014(nodeChar, s) end
function CharManager.hasLanguage(nodeChar, s) end
function CharManager.hasSaveProficiency(nodeChar, s) end
function CharManager.hasSkill(nodeChar, s) end
function CharManager.hasSkillProficiency(nodeChar, s) end
function CharManager.hasSkillExpertise(nodeChar, s) end
function CharManager.hasGroupPower(nodeChar, sGroup, s) end
function CharManager.getAbility(nodeChar, s) end
function CharManager.getLevel(nodeChar) end
function CharManager.getNextLevelXP(nodeChar) end
function CharManager.getClassLevel(nodeChar, s) end
function CharManager.getClassSummary(nodeChar, bShort) end
function CharManager.getClassHDUsage(nodeChar) end
function CharManager.getSubclass(nodeChar, s, bSource2024) end
function CharManager.getSpellcastingData(nodeChar) end
function CharManager.getClassRecord(nodeChar, s, bSource2024) end
function CharManager.getTraitRecord(nodeChar, s) end
function CharManager.getFeatureRecord(nodeChar, s) end
function CharManager.getFeatureRecord2014(nodeChar, s) end
function CharManager.getFeatRecord(nodeChar, s) end
function CharManager.getFeatRecord2024(nodeChar, s) end
function CharManager.getFeatRecord2014(nodeChar, s) end
function CharManager.getLanguageRecord(nodeChar, s) end
function CharManager.getGroupPowerRecord(nodeChar, sGroup, s) end
function CharManager.getPowerGroupRecord(nodeChar, s) end
function CharManager.getSkillRecord(nodeChar, s, bCreate) end
function CharManager.refreshNextLevelXP(nodeChar) end
function CharManager.addAbilityAdjustment(nodeChar, sAbility, nAdj, nAbilityMax) end
function CharManager.addHP(nodeChar, vHP) end
function CharManager.setSize(nodeChar, s) end
function CharManager.setSpeed(nodeChar, vSpeed) end
function CharManager.addSpeed(nodeChar, vSpeed) end
function CharManager.addSpecialMove(nodeChar, s, vDist) end
function CharManager.addSense(nodeChar, s, vDist) end
function CharManager.addSaveProficiency(nodeChar, s) end
function CharManager.addSkillProficiency(nodeChar, s) end
function CharManager.increaseSkillProficiency(nodeChar, s, nIncrease) end
function CharManager.addProficiency(nodeChar, sType, s) end
function CharManager.addLanguage(nodeChar, s) end
function CharManager.addFeat(nodeChar, s, tData) end
function CharManager.addPowerGroup(nodeChar, tData) end
function CharManager.addSpell(nodeChar, tData) end
