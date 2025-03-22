---@meta VisionManager

---@class VisionManager

VisionManager = {}

function VisionManager.onInit() end
function VisionManager.onTabletopInit() end
function VisionManager.onClose() end
function VisionManager.clearLightDefaults() end
function VisionManager.addLightDefault(sKey, rLight) end
function VisionManager.addLightDefaults(tLights) end
function VisionManager.removeLightDefault(sKey) end
function VisionManager.clearLightPresets() end
function VisionManager.addLightPreset(tLight) end
function VisionManager.populateLightPresets() end
function VisionManager.updateLightPresets() end
function VisionManager.getLightPresetEffects() end
function VisionManager.addVisionType(sText, sKey, bIgnoreBlind) end
function VisionManager.removeVisionType(sText) end
function VisionManager.clearVisionFields() end
function VisionManager.addVisionField(s) end
function VisionManager.getVisionFields() end
function VisionManager.updateTokenVision(nodeField) end
function VisionManager.updateTokenVisionHelper(tokenCT, nodeCT) end
function VisionManager.getTokenVisionInfo(tokenCT, nodeCT) end
function VisionManager.removeCurrentVisions(rToken) end
function VisionManager.processSenseVisions(rToken) end
function VisionManager.processEffectVisions(rToken) end
function VisionManager.processTokenVisionHelper(rToken, sText, nDistance) end
function VisionManager.processTokenVisionHelper2(rToken, sVision, nDistance) end
function VisionManager.addTokenVisions(rToken) end
function VisionManager.calcTokenVisionGridDistance(rToken, sVision, nDistance) end
function VisionManager.saveTokenVisionInfo(rToken) end
function VisionManager.updateTokenLightingHelper(tokenCT, nodeCT) end
function VisionManager.getTokenLightingInfo(tokenCT, nodeCT) end
function VisionManager.removeCurrentLights(rToken) end
function VisionManager.addEffectLights(rToken) end
function VisionManager.addTokenLightHelper(rToken, nDistance, tRemainder) end
function VisionManager.addTokenLightHelper2(rToken, sColor, nBrightDistance, nDimDistance, nBrightFalloff, nDimFalloff, sAnimType, nAnimSpeed) end
function VisionManager.saveTokenLightingInfo(rToken) end
