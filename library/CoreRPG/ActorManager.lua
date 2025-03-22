---@meta ActorManager

---@class ActorManager

ActorManager = {}

function ActorManager.onInit() end
function ActorManager.registerStandardRecordTypes() end
function ActorManager.registerStandardCTLookup() end
function ActorManager.registerActorRecordType(sRecordType) end
function ActorManager.registerActorTypePathHandler(sPath, v) end
function ActorManager.registerCTNodeLookup(fn) end
function ActorManager.resolveActor(v) end
function ActorManager.getCTPathFromActorNode(nodeActor) end
function ActorManager.getActorRecordTypeFromPath(sPath) end
function ActorManager.resolveDisplayName(rActor) end
function ActorManager.getRecordType(v) end
function ActorManager.isRecordType(v, sRecordType) end
function ActorManager.isPC(v) end
function ActorManager.isOwner(v) end
function ActorManager.hasCT(v) end
function ActorManager.getCTNodeName(v) end
function ActorManager.getCTNode(v) end
function ActorManager.getCreatureNodeName(v) end
function ActorManager.getCreatureNode(v) end
function ActorManager.getFaction(v) end
function ActorManager.isFaction(v, sFaction) end
function ActorManager.getDisplayName(v) end
function ActorManager.getTypeAndNodeName(v) end
function ActorManager.getTypeAndNode(v) end
function ActorManager.addActiveEffectNode(rActor, vNode) end
function ActorManager.getActiveEffectNodes(rActor) end
function ActorManager.getCTEffects(v) end
function ActorManager.getEffects(v) end
