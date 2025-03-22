---@meta SoundManagerFile

---@class SoundManagerFile

SoundManagerFile = {}

function SoundManagerFile.onInit() end
function SoundManagerFile.parseSoundID(sSoundID) end
function SoundManagerFile.playSound(sSoundID) end
function SoundManagerFile.getSoundData() end
function SoundManagerFile.setSoundData(tData, bSave) end
function SoundManagerFile.getDataFilePath() end
function SoundManagerFile.loadData() end
function SoundManagerFile.saveData() end
function SoundManagerFile.rebuildFilters() end
function SoundManagerFile.getFilterValues(sKey) end
function SoundManagerFile.clearFilterValues() end
function SoundManagerFile.setFilterValue(sKey, s) end
function SoundManagerFile.getFilterValue(sKey) end
function SoundManagerFile.sortfuncSettingsContent(a, b) end
function SoundManagerFile.isSettingsContentFilteredRecord(v) end
function SoundManagerFile.onSettingsFilterChanged(tValuesLower) end
function SoundManagerFile.handleSettingsContentDrop(draginfo) end
function SoundManagerFile.onButtonImportText() end
function SoundManagerFile.processImportText(sText) end
function SoundManagerFile.onButtonImportCSV() end
function SoundManagerFile.onDialogEndImportCSV(sResult, sPath) end
function SoundManagerFile.onButtonClear() end
function SoundManagerFile.onDialogEndClear(sResult) end
function SoundManagerFile.helperImportFilePath(sFilePath) end
