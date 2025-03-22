---@meta ToolbarManager

---@class ToolbarManager

ToolbarManager = {}

function ToolbarManager.registerButton(sKey, tButton) end
function ToolbarManager.getButton(sKey) end
function ToolbarManager.checkButton(sKey) end
function ToolbarManager.addList(w, t, sPosition) end
function ToolbarManager.addButton(w, sKey, sPosition) end
function ToolbarManager.addSeparator(w, sPosition) end
function ToolbarManager.initButton(c, sKey) end
function ToolbarManager.onButtonGetDefault(c) end
function ToolbarManager.onButtonValueChanged(c) end
function ToolbarManager.initButtonAction(c, sKey) end
function ToolbarManager.activateButtonAction(c, ...) end
function ToolbarManager.dragButtonAction(c, draginfo, ...) end
function ToolbarManager.initButtonField(c, sKey) end
function ToolbarManager.initButtonToggle(c, sKey) end
