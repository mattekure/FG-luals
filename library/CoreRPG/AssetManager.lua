---@meta AssetManager

---@class AssetManager

AssetManager = {}

function AssetManager.onInit() end
function AssetManager.onImageHotKeyActivate(draginfo) end
function AssetManager.onTokenHotKeyActivate(draginfo) end
function AssetManager.onPortraitHotKeyActivate(draginfo) end
function AssetManager.onImageChatDrop(draginfo) end
function AssetManager.onTokenChatDrop(draginfo) end
function AssetManager.onPortraitChatDrop(draginfo) end
function AssetManager.onAssetFieldPressed(sField, sAsset) end
function AssetManager.onAssetFieldDrag(sField, sAsset, draginfo) end
function AssetManager.onAssetFieldAdd(sField) end
function AssetManager.onAssetPressed(sAsset, sAssetType) end
function AssetManager.onAssetDrag(sAsset, sAssetType, draginfo) end
function AssetManager.getAssetTypeFromField(sField) end
function AssetManager.openAssetPreview(sAsset, sAssetType) end
