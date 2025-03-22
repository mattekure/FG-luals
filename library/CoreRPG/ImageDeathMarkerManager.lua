---@meta ImageDeathMarkerManager

---@class ImageDeathMarkerManager

ImageDeathMarkerManager = {}

function ImageDeathMarkerManager.onTabletopInit() end
function ImageDeathMarkerManager.onTabletopClose() end
function ImageDeathMarkerManager.isEnabled() end
function ImageDeathMarkerManager.setEnabled(bValue) end
function ImageDeathMarkerManager.onPreCombatantDelete(nodeCT) end
function ImageDeathMarkerManager.onSetNameUpdate() end
function ImageDeathMarkerManager.onSetDelete() end
function ImageDeathMarkerManager.refreshSetOptionsInCreatureTypesWindow() end
function ImageDeathMarkerManager.registerStandardDeathMarkersDnD() end
function ImageDeathMarkerManager.getSetNames() end
function ImageDeathMarkerManager.getSetMap() end
function ImageDeathMarkerManager.registerGetCreatureTypeFunction(f) end
function ImageDeathMarkerManager.getCreatureType(nodeCT) end
function ImageDeathMarkerManager.getCreatureTypeMap() end
function ImageDeathMarkerManager.registerCreatureTypes(tCreatureTypes) end
function ImageDeathMarkerManager.setCreatureTypeDefault(sCreatureType, sDefaultSetKey) end
function ImageDeathMarkerManager.getCreatureTypeSetDefaultMap() end
function ImageDeathMarkerManager.registerDefaultSet(sKey, tAssets) end
function ImageDeathMarkerManager.getDefaultSetMap() end
function ImageDeathMarkerManager.resolveDefaultSetName(sKey) end
function ImageDeathMarkerManager.loadSettings() end
function ImageDeathMarkerManager.saveSettings() end
function ImageDeathMarkerManager.addMarker(nodeCT) end
function ImageDeathMarkerManager.clearMarkers(nodeRecord) end
function ImageDeathMarkerManager.resolveMarker(nodeCT) end
function ImageDeathMarkerManager.getMarkerLayer(sPath, bCreate) end
