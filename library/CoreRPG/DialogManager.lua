---@meta DialogManager

---@class DialogManager

DialogManager = {}

function DialogManager.openDialog(sDialogClass, tData) end
function DialogManager.onDialogClose(sResult, tData) end
function DialogManager.onWindowClosed(sClass) end
function DialogManager.isDialogClass(s) end
function DialogManager.addDialogClass(s) end
function DialogManager.helperAddPendingDialog(sDialogClass, tData) end
function DialogManager.helperOpenPendingDialog(sDialogClass) end
function DialogManager.helperGetPendingDialog(sDialogClass) end
function DialogManager.requestSelectionDialog(tData, bFront) end
