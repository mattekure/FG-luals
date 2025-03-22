---@meta TokenManager

---@class TokenManager

TokenManager = {}

function TokenManager.onInit() end
function TokenManager.onTabletopInit() end
function TokenManager.setTokenFrameName(sFrame, sFrameOffset) end
function TokenManager.getTokenFrameName() end
function TokenManager.setTokenFontName(sFont) end
function TokenManager.getTokenFontName() end
function TokenManager.setTokenFrameOrdinal(sFrame, sFrameOffset) end
function TokenManager.getTokenFrameOrdinal() end
function TokenManager.setTokenFontOrdinal(sFont) end
function TokenManager.getTokenFontOrdinal() end
function TokenManager.setTokenFrameHeight(sFrame, sFrameOffset) end
function TokenManager.getTokenFrameHeight() end
function TokenManager.setTokenFontsHeight(sPositiveFont, sNegativeFont) end
function TokenManager.getTokenFontsHeight() end
function TokenManager.setCustomGetReachUnderlayGridUnits(fn) end
function TokenManager.getReachUnderlayGridUnits(nodeCT) end
function TokenManager.linkToken(nodeCT, newTokenInstance) end
function TokenManager.initOptionTracking() end
function TokenManager.onOptionChanged() end
function TokenManager.getImageGridSize(token) end
function TokenManager.getImageGridUnits(token) end
function TokenManager.getImageTokenLockState(token) end
function TokenManager.onCombatantDelete(nodeCT) end
function TokenManager.onTokenAdd(tokenMap, bLoad) end
function TokenManager.onMove(tokenMap) end
function TokenManager.onTokenDelete(tokenMap) end
function TokenManager.onContainerChanged(tokenCT, nodeOldContainer, nOldId) end
function TokenManager.onTargetUpdate(tokenMap) end
function TokenManager.onWheelCT(nodeCT, notches) end
function TokenManager.onWheelHelper(tokenCT, notches) end
function TokenManager.onWheelHeightHelper(tokenCT, notches) end
function TokenManager.onDrop(tokenCT, draginfo) end
function TokenManager.onDoubleClick(tokenMap, vImage) end
function TokenManager.onWheel(tokenMap, notches) end
function TokenManager.onHover(tokenMap, bOver) end
function TokenManager.onIdentityStateChange(sIdentity, sUser, sStateName) end
function TokenManager.updateAttributesFromToken(tokenMap) end
function TokenManager.updateAttributes(nodeField) end
function TokenManager.updateAttributesHelper(tokenCT, nodeCT) end
function TokenManager.updateTooltip(tokenCT, nodeCT) end
function TokenManager.updateName(nodeName) end
function TokenManager.updateNameHelper(tokenCT, nodeCT) end
function TokenManager.updateHeightHelper(tokenMap) end
function TokenManager.updateVisibility(nodeCT) end
function TokenManager.updateVisibilityHelper(tokenCT, nodeCT) end
function TokenManager.deleteOwner(nodePC) end
function TokenManager.updateOwner(nodePC) end
function TokenManager.updateOwnerHelper(tokenCT, nodeCT) end
function TokenManager.updateActive(nodeField) end
function TokenManager.updateActiveHelper(tokenCT, nodeCT) end
function TokenManager.setActiveWidget(tokenCT, _, bActive) end
function TokenManager.getTokenActiveOptions() end
function TokenManager.setTokenActiveOptions(tData) end
function TokenManager.updateFaction(nodeFaction) end
function TokenManager.updateFactionHelper(tokenCT, nodeCT) end
function TokenManager.updateSpaceReach(nodeField) end
function TokenManager.updateSizeHelper(tokenCT, nodeCT) end
function TokenManager.updateTokenColor(token) end
function TokenManager.setDragTokenUnits(n) end
function TokenManager.getDragTokenUnits() end
function TokenManager.endDragTokenWithUnits() end
function TokenManager.calcTokenSpace(nSpace) end
function TokenManager.getTokenSpace(tokenMap) end
function TokenManager.autoTokenScale(tokenMap) end
function TokenManager.updateEffects(nodeCT) end
function TokenManager.setDefaultHealthEnabled(bState) end
function TokenManager.isDefaultHealthEnabled() end
function TokenManager.setDefaultHealthInfoFunction(fn) end
function TokenManager.getDefaultHealthInfoFunction() end
function TokenManager.getHealthInfoDefault(nodeCT) end
function TokenManager.addDefaultHealthFeatures(f, tHealthFields) end
function TokenManager.updateHealth(nodeField) end
function TokenManager.updateHealthHelper(tokenCT, nodeCT) end
function TokenManager.updateHealthBarScale(tokenCT, nodeCT, nPercentWounded) end
function TokenManager.setDefaultEffectsEnabled(bState) end
function TokenManager.isDefaultEffectsEnabled() end
function TokenManager.setDefaultEffectInfoFunction(fn) end
function TokenManager.getDefaultEffectInfoFunction() end
function TokenManager.setDefaultEffectParseFunction(fn) end
function TokenManager.getDefaultEffectParseFunction() end
function TokenManager.addDefaultEffectFeatures(f, f2) end
function TokenManager.updateEffectsHelper(tokenCT, nodeCT) end
function TokenManager.addEffectTagIconConditional(sType, f) end
function TokenManager.getEffectTagIconConditionals() end
function TokenManager.addEffectTagIconBonus(vType) end
function TokenManager.getEffectTagIconBonuses() end
function TokenManager.addEffectTagIconSimple(vType, sIcon) end
function TokenManager.getEffectTagIconSimple() end
function TokenManager.addEffectConditionIcon(vType, sIcon) end
function TokenManager.getEffectConditionIcons() end
function TokenManager.getEffectInfoDefault(nodeCT, bSkipGMOnly) end
