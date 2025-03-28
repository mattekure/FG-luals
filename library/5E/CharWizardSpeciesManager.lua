---@meta CharWizardSpeciesManager

---@class CharWizardSpeciesManager

CharWizardSpeciesManager = {}

function CharWizardSpeciesManager.getSpeciesRecord() end
function CharWizardSpeciesManager.getSpeciesNode() end
function CharWizardSpeciesManager.setSpeciesRecord(sRecord) end
function CharWizardSpeciesManager.getAncestryRecord() end
function CharWizardSpeciesManager.setAncestryRecord(sRecord) end
function CharWizardSpeciesManager.isSpecies2024() end
function CharWizardSpeciesManager.getSpeciesName() end
function CharWizardSpeciesManager.getSpeciesDisplayName() end
function CharWizardSpeciesManager.setSpeciesSize(s) end
function CharWizardSpeciesManager.setSpeciesSpeed(n) end
function CharWizardSpeciesManager.addSpeciesSpecialMove(s, vDist) end
function CharWizardSpeciesManager.setSpeciesDarkvision(n) end
function CharWizardSpeciesManager.addSpeciesAbilityIncreases(sAbility, nMod) end
function CharWizardSpeciesManager.clearSpeciesAbilityIncreases() end
function CharWizardSpeciesManager.setSpeciesBaseSkills(tSkills) end
function CharWizardSpeciesManager.addSpeciesSkillChoice(s) end
function CharWizardSpeciesManager.clearSpeciesSkillChoice() end
function CharWizardSpeciesManager.setSpeciesBaseLanguages(tLanguages) end
function CharWizardSpeciesManager.addSpeciesLanguageChoice(s) end
function CharWizardSpeciesManager.clearSpeciesLanguageChoice() end
function CharWizardSpeciesManager.setSpeciesBaseArmorProficiencies(tProfs) end
function CharWizardSpeciesManager.addSpeciesArmorProficiencyChoice(s) end
function CharWizardSpeciesManager.clearSpeciesArmorProficiencyChoice() end
function CharWizardSpeciesManager.setSpeciesBaseWeaponProficiencies(tProfs) end
function CharWizardSpeciesManager.addSpeciesWeaponProficiencyChoice(s) end
function CharWizardSpeciesManager.clearSpeciesWeaponProficiencyChoice() end
function CharWizardSpeciesManager.setSpeciesBaseToolProficiencies(tProfs) end
function CharWizardSpeciesManager.addSpeciesToolProficiencyChoice(s) end
function CharWizardSpeciesManager.clearSpeciesToolProficiencyChoice() end
function CharWizardSpeciesManager.addSpeciesBaseFeat(s) end
function CharWizardSpeciesManager.addSpeciesChoiceFeatPath(sPath) end
function CharWizardSpeciesManager.removeSpeciesChoiceFeatPath(sPath) end
function CharWizardSpeciesManager.setSpeciesSpellAbility(sAbility) end
function CharWizardSpeciesManager.setSpeciesBaseSpells(tSpells) end
function CharWizardSpeciesManager.addSpeciesSpellChoice(s) end
function CharWizardSpeciesManager.clearSpeciesSpellChoice() end
function CharWizardSpeciesManager.processSpecies(w) end
function CharWizardSpeciesManager.resetSpecies() end
function CharWizardSpeciesManager.collectAncestries() end
function CharWizardSpeciesManager.setupAncestries(w) end
function CharWizardSpeciesManager.processAncestry(w) end
function CharWizardSpeciesManager.resetAncestry(w) end
function CharWizardSpeciesManager.updateSpeciesFields(w) end
function CharWizardSpeciesManager.handleSpeciesSizeField2024(w) end
function CharWizardSpeciesManager.handleSpeciesSpeedField2024() end
function CharWizardSpeciesManager.handleSpeciesLanguage2024(w) end
function CharWizardSpeciesManager.clearAncestryTraits() end
function CharWizardSpeciesManager.updateSpeciesTraits(w, bAncestry) end
function CharWizardSpeciesManager.handleMissingSpeciesASI(w) end
function CharWizardSpeciesManager.collectSpeciesTraits(tSpeciesTraits) end
function CharWizardSpeciesManager.collectAncestryTraits(tSpeciesTraits) end
function CharWizardSpeciesManager.handleAbilityScoreInc(w, s) end
function CharWizardSpeciesManager.helperSpeciesAbilityScoreGeneric2014(w) end
function CharWizardSpeciesManager.helperSpeciesAbilityScoreSpecific2014(w, s) end
function CharWizardSpeciesManager.handleSpeciesSizeTrait(w, s) end
function CharWizardSpeciesManager.handleSpeciesSpeedTrait(_, s) end
function CharWizardSpeciesManager.handleSpeciesSkills(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesProficiencies(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesArmorProficiencies(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesWeaponProficiencies(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesToolProficiencies(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesLanguages(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesSpells(w, sTrait, s) end
function CharWizardSpeciesManager.handleSpeciesFeat(w, _, s) end
function CharWizardSpeciesManager.parseSpeciesSizeTrait(s) end
function CharWizardSpeciesManager.parseSpeciesFeats(s) end
function CharWizardSpeciesManager.processSpeciesDecision(w) end
function CharWizardSpeciesManager.processSpeciesDecisionASIOption(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionASI(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionSkill(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionArmorProficiency(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionWeaponProficiency(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionToolProficiency(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionLanguage(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionVariableTrait(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionSpell(wDecision) end
function CharWizardSpeciesManager.processSpeciesDecisionFeat(wSelection) end
function CharWizardSpeciesManager.resetSpeciesDecisionFeat(wDecision) end
