---@meta QuickMapManager

---@class QuickMapManager

QuickMapManager = {}

function QuickMapManager.openWindow() end
function QuickMapManager.openWindowWithAsset(sAsset) end
function QuickMapManager.openWindowWithBattle(sPath) end
function QuickMapManager.populate(w) end
function QuickMapManager.createGrid(w, bParty) end
function QuickMapManager.updatePartyZones(w, nPos) end
function QuickMapManager.updateEnemyZones(w) end
function QuickMapManager.getZoneNumber(c) end
function QuickMapManager.toggleEnemyZone(w, n) end
function QuickMapManager.handleDrop(w, draginfo) end
function QuickMapManager.onAssetClick() end
function QuickMapManager.onBattleClick() end
function QuickMapManager.onPartyZoneClick(cZone) end
function QuickMapManager.onEnemyZoneClick(cZone) end
function QuickMapManager.onSubmitClick(w) end
function QuickMapManager.setAsset(w, sAsset) end
function QuickMapManager.setBattle(w, sPath) end
function QuickMapManager.collectAsset(w, tData) end
function QuickMapManager.collectBattle(w, tData) end
function QuickMapManager.collectPartyLoc(w, tData) end
function QuickMapManager.collectEnemyLoc(w, tData) end
function QuickMapManager.buildQuickMap(w) end
function QuickMapManager.addBattle(tData) end
function QuickMapManager.getFactionRecords(tData) end
function QuickMapManager.createImageRecord(tData) end
function QuickMapManager.createFillImage(tData) end
function QuickMapManager.createFullImage(tData) end
function QuickMapManager.getUniqueMapName() end
function QuickMapManager.calculateZones(tData) end
function QuickMapManager.snapZoneToGridCenter(tData, x, y) end
function QuickMapManager.addPartyToImage(tData) end
function QuickMapManager.addEnemyToImage(tData) end
function QuickMapManager.openImageRecord(tData) end
