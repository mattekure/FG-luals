---@meta ModifierStack

---@class ModifierStack

ModifierStack = {}

function ModifierStack.onTabletopInit() end
function ModifierStack.onHotkeyModifier(draginfo) end
function ModifierStack.registerControl(c) end
function ModifierStack.updateControl() end
function ModifierStack.isEmpty() end
function ModifierStack.getSum() end
function ModifierStack.getDescription(forcebonus) end
function ModifierStack.addSlot(description, number) end
function ModifierStack.removeSlot(number) end
function ModifierStack.adjustFreeAdjustment(amount) end
function ModifierStack.setFreeAdjustment(amount) end
function ModifierStack.setAdjustmentEdit(state) end
function ModifierStack.reset() end
function ModifierStack.clearFocus() end
function ModifierStack.hoverDisplay(n) end
function ModifierStack.getStack(forcebonus) end
function ModifierStack.getTargeting() end
function ModifierStack.lock() end
function ModifierStack.unlock(bReset) end
function ModifierStack.getModifierKey(sButton) end
function ModifierStack.setModifierKey(sButton, bState, bUpdateWnd) end
