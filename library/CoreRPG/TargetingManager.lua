---@meta TargetingManager

---@class TargetingManager

TargetingManager = {}

function TargetingManager.onInit() end
function TargetingManager.onCTEntryDeleted(nodeEntry) end
function TargetingManager.getFullTargets(rActor) end
function TargetingManager.getActiveToken(vImage) end
function TargetingManager.getSelectionHelper(vImage) end
function TargetingManager.clearTargets(vImage) end
function TargetingManager.setFactionTargets(vImage, bNegated) end
function TargetingManager.removeTarget(sSourceNode, sTargetNode) end
function TargetingManager.notifyToggleTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.notifyAddTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.notifyRemoveTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.notifyClearTargets(nodeSourceCT) end
function TargetingManager.handleToggleTarget(msgOOB) end
function TargetingManager.handleAddTarget(msgOOB) end
function TargetingManager.handleRemoveTarget(msgOOB) end
function TargetingManager.handleClearTargets(msgOOB) end
function TargetingManager.toggleCTTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.addCTTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.removeCTTarget(nodeSourceCT, nodeTargetCT) end
function TargetingManager.removeCTTargetEntry(nodeSourceCT, nodeSourceCTTarget) end
function TargetingManager.clearCTTargets(nodeSourceCT) end
function TargetingManager.toggleClientCTTarget(nodeTargetCT) end
function TargetingManager.removeCTTargeted(nodeTarget) end
function TargetingManager.setCTFactionTargets(nodeSourceCT, bNegated) end
function TargetingManager.updateTargetsFromCT(nodeSourceCT, newTokenInstance) end
function TargetingManager.lockTargetUpdate() end
function TargetingManager.unlockTargetUpdate() end
function TargetingManager.onTargetUpdate(tokenMap) end
