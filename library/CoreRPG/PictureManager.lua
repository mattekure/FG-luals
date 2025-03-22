---@meta PictureManager

---@class PictureManager

PictureManager = {}

function PictureManager.onTabletopInit() end
function PictureManager.sendPictureCreate(sAsset, sName) end
function PictureManager.handlePictureCreate(msgOOB) end
function PictureManager.sendPictureShare(nodePicture) end
function PictureManager.handlePictureShare(msgOOB) end
function PictureManager.shareRecordPicture(nodeRecord) end
function PictureManager.createPictureItem(sAsset, sName) end
