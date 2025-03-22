---@meta WindowManager

---@class WindowManager

WindowManager = {}

function WindowManager.onTabletopInit() end
function WindowManager.onUnloadedModuleReference(_, sClass, sPath) end
function WindowManager.onUnloadedModuleLoadCallback(tCustom) end
function WindowManager.getRecordType(w) end
function WindowManager.updateTooltip(w) end
function WindowManager.getWindowReadOnlyState(w) end
function WindowManager.getReadOnlyState(vNode) end
function WindowManager.getLockedState(vNode) end
function WindowManager.getEditMode(v, s) end
function WindowManager.onEditModeChanged(v) end
function WindowManager.getOuterControlValue(v, s) end
function WindowManager.getInnerControlValue(v, s) end
function WindowManager.setInnerControlValue(v, s, vValue) end
function WindowManager.callInnerFunction(v, sFunc, ...) end
function WindowManager.callInnerWindowFunction(v, sFunc, ...) end
function WindowManager.hasOuterWindowFunction(v, sFunc) end
function WindowManager.callOuterWindowFunction(v, sFunc, ...) end
function WindowManager.getOuterWindowDatabaseNode(v) end
function WindowManager.callSafeControlsSetLockMode(w, tControls, bLock) end
function WindowManager.callSafeControlSetLockMode(w, sControl, bLock) end
function WindowManager.callSafeControlsSetVisible(w, tControls, bVisible) end
function WindowManager.callSafeControlSetVisible(w, sControl, bVisible) end
function WindowManager.callSafeControlsUpdate(w, tControls, bReadOnly, bForceHide) end
function WindowManager.callSafeControlUpdate(w, sControl, bReadOnly, bForceHide) end
function WindowManager.setControlVisibleWithLabel(w, sControl, bVisible) end
function WindowManager.getAnyControlVisible(w, tControls) end
function WindowManager.onColumnControlInit(c) end
function WindowManager.onColumnControlSetLockMode(c, bReadOnly) end
function WindowManager.onColumnControlGetLockMode(c) end
function WindowManager.onColumnControlVisibilityChanged(c) end
function WindowManager.onColumnControlValueChanged(c) end
function WindowManager.onColumnControlUpdateLegacy(c, bReadOnly, bForceHide) end
function WindowManager.setInitialOrder(w) end
function WindowManager.handleDropReorder(w, draginfo) end
function WindowManager.onDropReorder(nodeList, nodeTarget, nodeDrag) end
function WindowManager.getNodesByOrder(nodeList) end
function WindowManager.getSortedNodesByOrder(nodeList) end
function WindowManager.sortfuncNodeByOrder(a, b) end
