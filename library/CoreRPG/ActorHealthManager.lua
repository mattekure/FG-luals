---@meta ActorHealthManager

---@class ActorHealthManager

ActorHealthManager = {}

function ActorHealthManager.registerStatusHealthColor(sStatus, sColor) end
function ActorHealthManager.getWoundPercent(_) end
function ActorHealthManager.getHealthStatus(v) end
function ActorHealthManager.getHealthColor(v) end
function ActorHealthManager.getHealthInfo(v) end
function ActorHealthManager.getTokenHealthInfo(v) end
function ActorHealthManager.getDefaultStatusFromWoundPercent(nPercentWounded) end
function ActorHealthManager.isDyingOrDead(rActor) end
function ActorHealthManager.isDyingOrDeadStatus(sStatus) end
