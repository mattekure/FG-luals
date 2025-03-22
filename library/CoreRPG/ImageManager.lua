---@meta ImageManager

---@class ImageManager

ImageManager = {}

function ImageManager.onInit() end
function ImageManager.onTabletopInit() end
function ImageManager.onWindowOpened(w) end
function ImageManager.registerDBHandlers() end
function ImageManager.onImageRecordDeleted(nodeImageRecord) end
function ImageManager.isImageWindow(w) end
function ImageManager.registerToolbarButtons() end
function ImageManager.onToolbarToggleGetValue(c) end
function ImageManager.onToolbarToggleInit(c) end
function ImageManager.onToolbarToggleValueChanged(c) end
function ImageManager.onToolbarNavigationValueChanged(c) end
function ImageManager.onToolbarPreviewGetValue(c) end
function ImageManager.onToolbarPreviewValueChanged(c) end
function ImageManager.onToolbarTokenLockGetValue(c) end
function ImageManager.onToolbarTokenLockValueChanged(c) end
function ImageManager.onToolbarShortcutGetValue(c) end
function ImageManager.onToolbarShortcutValueChanged(c) end
function ImageManager.onToolbarDeathMarkerClearPressed(c) end
function ImageManager.onToolbarTargetClearPressed(c) end
function ImageManager.onToolbarTargetFriendPressed(c) end
function ImageManager.onToolbarTargetFoePressed(c) end
function ImageManager.onToolbarTargetSelectGetValue(c) end
function ImageManager.onToolbarTargetSelectValueChanged(c) end
function ImageManager.onToolbarSelectGetValue(c) end
function ImageManager.onToolbarSelectValueChanged(c) end
function ImageManager.onToolbarEraseGetValue(c) end
function ImageManager.onToolbarEraseValueChanged(c) end
function ImageManager.onToolbarDrawGetValue(c) end
function ImageManager.onToolbarDrawValueChanged(c) end
function ImageManager.onToolbarUnmaskGetValue(c) end
function ImageManager.onToolbarUnmaskValueChanged(c) end
function ImageManager.onToolbarPingGetValue(c) end
function ImageManager.onToolbarPingValueChanged(c) end
function ImageManager.onToolbarViewTokenGetValue(c) end
function ImageManager.onToolbarViewTokenValueChanged(c) end
function ImageManager.onToolbarViewCameraGetValue(c) end
function ImageManager.onToolbarViewCameraValueChanged(c) end
function ImageManager.onToolbarZoomToFitPressed(c) end
function ImageManager.registerBackPanel(w) end
function ImageManager.getBackPanel() end
function ImageManager.registerMaxPanel(w) end
function ImageManager.getMaxPanel() end
function ImageManager.registerFullPanel(w) end
function ImageManager.getFullPanel() end
function ImageManager.getPanelValue(wPanel) end
function ImageManager.getPanelDataValue(wPanel) end
function ImageManager.isPanelDataValue(wPanel, sRecord) end
function ImageManager.clearPanelValue(wPanel) end
function ImageManager.setPanelValue(wPanel, sRecord, x, y, zoom) end
function ImageManager.closePanel() end
function ImageManager.sendWindowToBackPanel(w) end
function ImageManager.sendBackPanelToWindow() end
function ImageManager.sendBackPanelToMaxPanel() end
function ImageManager.sendMaxPanelToBackPanel() end
function ImageManager.sendMaxPanelToFullPanel() end
function ImageManager.sendFullPanelToMaxPanel() end
function ImageManager.checkImageSharing(w) end
function ImageManager.checkImagePanelDeletion(nodeImageRecord) end
function ImageManager.performSizeUp(w) end
function ImageManager.performSizeDown(w) end
function ImageManager.registerImage(cImage) end
function ImageManager.unregisterImage(cImage) end
function ImageManager.getActiveImages() end
function ImageManager.addStandardDropHandlers() end
function ImageManager.registerDropCallback(sDropType, fn) end
function ImageManager.unregisterDropCallback(sDropType, fn) end
function ImageManager.onImageShortcutDrop(cImage, x, y, draginfo) end
function ImageManager.onImageCTFactionDrop(cImage, x, y, draginfo) end
function ImageManager.onImageTokenDrop(cImage, x, y, draginfo) end
function ImageManager.onImageInit(cImage) end
function ImageManager.onImageTargetSelect(cImage, tTargets) end
function ImageManager.onImageDrop(cImage, x, y, draginfo) end
function ImageManager.getImageControl(tokenMap, bOpen) end
function ImageManager.centerOnToken(tokenMap, bOpen) end
function ImageManager.selectToken(tokenMap) end
