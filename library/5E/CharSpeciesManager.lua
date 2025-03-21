---@meta CharSpeciesManager

---@class CharSpeciesManager

CharSpeciesManager = {}

function CharSpeciesManager.addSpecies(nodeChar, sRecord, tData) end
function CharSpeciesManager.addAncestry(nodeChar, sRecord, tData) end
function CharSpeciesManager.addSpeciesTrait(nodeChar, sRecord, tData) end
function CharSpeciesManager.helperResolveAncestryOnSpeciesDrop(rAdd) end
function CharSpeciesManager.callbackResolveAncestryOnSpeciesDrop(tSelection, rAdd, tSelectionLinks) end
function CharSpeciesManager.helperResolveSpeciesOnAncestryDrop(rAdd) end
function CharSpeciesManager.getAncestryOptions(nodeSpecies) end
function CharSpeciesManager.helperGetSpeciesExternalAncestryOption(node, tOptions) end
function CharSpeciesManager.helperGetSpeciesEmbeddedAncestryOption(nodeSpecies, tOptions) end
function CharSpeciesManager.getSpeciesFromAncestry(sAncestryName, bSource2024) end
function CharSpeciesManager.helperGetSpeciesFromAncestryDirect(node, tOptions) end
function CharSpeciesManager.helperGetSpeciesFromAncestryEmbedded(node, tOptions, sAncestryName, bSource2024) end
function CharSpeciesManager.helperAddSpecies(rAdd) end
function CharSpeciesManager.helperAddSpeciesMain(rAdd) end
function CharSpeciesManager.helperAddSpeciesMainStats(rAdd) end
function CharSpeciesManager.helperAddAncestry(rAdd) end
function CharSpeciesManager.getSpeciesPowerGroupByName(sSpecies) end
function CharSpeciesManager.getTraitSpeciesName(rAdd) end
function CharSpeciesManager.getTraitSpellGroup(rAdd) end
function CharSpeciesManager.getTraitPowerGroup(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitMain(rAdd) end
function CharSpeciesManager.checkSpeciesTraitSkipAdd(rAdd) end
function CharSpeciesManager.addSpeciesTraitStandard(rAdd) end
function CharSpeciesManager.checkSpeciesTraitSpecialHandling(rAdd) end
function CharSpeciesManager.helperCheckSpeciesTraitSpecialHandling2024(rAdd) end
function CharSpeciesManager.helperCheckSpeciesTraitSpecialHandling2014(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitDarkvisionDrop(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitEnhancedSpeedDrop(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitAbilityIncreaseDrop2014(rAdd) end
function CharSpeciesManager.helperParseSpeciesAbilityIncrease2014(s) end
function CharSpeciesManager.helperAddSpeciesTraitSizeDrop2014(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitSpeedDrop2014(rAdd) end
function CharSpeciesManager.helperParseSpeciesSpeed2014(s) end
function CharSpeciesManager.helperAddSpeciesTraitLanguagesDrop2014(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitCatsClaws2014(rAdd) end
function CharSpeciesManager.helperAddSpeciesTraitVersatileDrop2024(rAdd) end
function CharSpeciesManager.applyDwarvenToughness(nodeChar, bInitialAdd) end
