---@meta ImportSpeciesManager

---@class ImportSpeciesManager

ImportSpeciesManager = {}

function ImportSpeciesManager.onTabletopInit() end
function ImportSpeciesManager.performImport(w) end
function ImportSpeciesManager.import2022(sDesc) end
function ImportSpeciesManager.importHelperName(tImportState) end
function ImportSpeciesManager.handleSpeciesTraitsHeader(tImportState) end
function ImportSpeciesManager.handleAncestryHeader(tImportState) end
function ImportSpeciesManager.isTraitHeading(s) end
function ImportSpeciesManager.initImportState(sDesc) end
function ImportSpeciesManager.nextImportLine(tImportState, nAdvance) end
function ImportSpeciesManager.peekImportLine(tImportState, nAdvance) end
function ImportSpeciesManager.addDescOutput(tImportState, s) end
function ImportSpeciesManager.finalizeDescription(tImportState, s) end
function ImportSpeciesManager.setTraitData(tImportState, sName) end
function ImportSpeciesManager.finalizeTrait(tImportState) end
function ImportSpeciesManager.setAncestry(tImportState, sAncestryName) end
function ImportSpeciesManager.finalizeAncestryDescription(tImportState) end
