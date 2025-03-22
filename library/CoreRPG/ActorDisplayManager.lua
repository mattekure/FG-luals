---@meta ActorDisplayManager

---@class ActorDisplayManager

ActorDisplayManager = {}

function ActorDisplayManager.onInit() end
function ActorDisplayManager.onTabletopInit() end
function ActorDisplayManager.addDisplayControl(c, sDisplayType, rActor, tCustom) end
function ActorDisplayManager.removeDisplayControl(c) end
function ActorDisplayManager.updateActorDisplayControls(sDisplaySet, rActor) end
function ActorDisplayManager.updateAllActorDisplayControls() end
function ActorDisplayManager.getDisplayControlType(c) end
function ActorDisplayManager.setDisplayCallback(sDisplaySet, sDisplayType, fn) end
function ActorDisplayManager.clearDisplayCallback(sDisplaySet) end
function ActorDisplayManager.callDisplayCallbacks(sDisplaySet, sDisplayType, ...) end
function ActorDisplayManager.onOptionChanged() end
function ActorDisplayManager.onTokenUpdate(nodeField) end
function ActorDisplayManager.onNameUpdate(nodeField) end
function ActorDisplayManager.onHealthUpdate(nodeField) end
function ActorDisplayManager.addStandardTokenDisplay() end
function ActorDisplayManager.addStandardNameDisplay() end
function ActorDisplayManager.addDefaultHealthFeatures(tHealthFields) end
function ActorDisplayManager.addDefaultEffectFeatures() end
function ActorDisplayManager.addEffectTracking() end
function ActorDisplayManager.updateCTEffectsField(nodeEffectField) end
function ActorDisplayManager.updateCTEffects(nodeCT) end
function ActorDisplayManager.updateDisplay(sDisplaySet, sDisplayType, cDisplay, rActor, tCustom) end
function ActorDisplayManager.getDisplayPictureSource(sDisplayType) end
function ActorDisplayManager.setDisplayPictureSource(sDisplayType, s) end
function ActorDisplayManager.getDisplayPicture(sDisplayType, rActor, tCustom) end
function ActorDisplayManager.addActorDisplayName(cDisplay, rActor) end
function ActorDisplayManager.addActorDisplayHealth(cDisplay, rActor) end
function ActorDisplayManager.addActorDisplayEffects(cDisplay, rActor) end
function ActorDisplayManager.addActorDisplayHeight(cDisplay, _, tCustom) end
function ActorDisplayManager.onTokenHover(tokenMap, bHover) end
function ActorDisplayManager.setImageHoverTokenDetail(wImage, tokenMap, bHover) end
function ActorDisplayManager.setImageViewTokenDetail(wImage, tokenMap) end
function ActorDisplayManager.onTokenMovePathChanged(tokenMap) end
function ActorDisplayManager.updateImageViewTokenMovePath(wImage, tokenMap) end
function ActorDisplayManager.acceptImageViewTokenMove(wImage) end
function ActorDisplayManager.cancelImageViewTokenMove(wImage) end
function ActorDisplayManager.onImageViewTokenClick(wImage) end
