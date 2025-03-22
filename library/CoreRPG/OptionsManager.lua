---@meta OptionsManager

---@class OptionsManager

OptionsManager = {}

function OptionsManager.onTabletopInit() end
function OptionsManager.isMouseWheelEditEnabled() end
function OptionsManager.processOption(_, sParams) end
function OptionsManager.populate(w) end
function OptionsManager.populateList(w) end
function OptionsManager.populateListGroup(w, tGroup, sFilterLower) end
function OptionsManager.populateButtons(w) end
function OptionsManager.isOptionRegistered(sKey) end
function OptionsManager.registerOptionData(tData) end
function OptionsManager.helperResolveOptionDataResources(tData) end
function OptionsManager.registerOption(sKey, bLocal, sGroup, sLabel, sOptionType, tCustom) end
function OptionsManager.registerOption2(sKey, bLocal, sGroupRes, sLabelRes, sOptionType, tCustom) end
function OptionsManager.deleteOption(sKey) end
function OptionsManager.addOptionToGroup(rOption, sGroup) end
function OptionsManager.getNewGroupOrder(sGroup) end
function OptionsManager.registerButton(sLabelRes, sClass, sRecord) end
function OptionsManager.unregisterButton(sLabelRes) end
function OptionsManager.onOptionChanged(nodeOption) end
function OptionsManager.registerCallback(sKey, fn) end
function OptionsManager.unregisterCallback(sKey, fn) end
function OptionsManager.makeCallback(sKey) end
function OptionsManager.isOption(sKey, sTargetValue) end
function OptionsManager.setOption(sKey, sValue) end
function OptionsManager.getOption(sKey) end
function OptionsManager.addOptionValue(sKey, sLabel, sValue, bUseResource) end
function OptionsManager.setOptionDefault(sKey, sDefaultValue) end
function OptionsManager.getOptionLabel(sKey) end
function OptionsManager.getOptionValueLabel(sKey, sValue) end
