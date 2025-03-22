---@meta UtilityManager

---@class UtilityManager

UtilityManager = {}

function UtilityManager.sendToStoreDLC(sProductID) end
function UtilityManager.sendToStoreAssetType(sAssetType) end
function UtilityManager.sendToStoreDLCModule(sProductID) end
function UtilityManager.sendToLink(sURL) end
function UtilityManager.sendToHelpLink(sURL) end
function UtilityManager.getSortedTable(aOriginal) end
function UtilityManager.copyDeep(v) end
function UtilityManager.encodeXMLTag(s) end
function UtilityManager.encodeXML(s) end
function UtilityManager.parsePath(sPath) end
function UtilityManager.isPathMatch(sPath1, sPath2, bCompareModule) end
function UtilityManager.doesPathStartWith(sPath, sStartPath) end
function UtilityManager.getPathSplit(sPath) end
function UtilityManager.parseDataBaseNodePath(vNode) end
function UtilityManager.isDataBaseNodePathMatch(vNode, sMatchPath, bCompareModule) end
function UtilityManager.doesDataBasePathStartWith(vNode, sStartPath) end
function UtilityManager.getDataBaseNodePathSplit(vNode) end
function UtilityManager.getNodeAccessLevel(vNode) end
function UtilityManager.getNodeSortedChildren(...) end
function UtilityManager.getRootNodeName(vNode) end
function UtilityManager.getSortedNodeList(tChildList, tFields, tDesc) end
function UtilityManager.sortfuncSortedNodeList(a, b) end
function UtilityManager.getWindowDatabasePath(w) end
function UtilityManager.getTopWindow(w) end
function UtilityManager.setStackedWindowVisibility(w, bShow) end
function UtilityManager.callStackedWindowFunction(w, sFunction, ...) end
function UtilityManager.safeDeleteWindow(w) end
function UtilityManager.resolveLinkedControl(c) end
function UtilityManager.getFontColorSansAlpha(sFont) end
function UtilityManager.getControlFontColor(w, sControl) end
function UtilityManager.getFullAndDisabledFontColors(sFont, sDisabledAlpha) end
function UtilityManager.getFullAndDisabledControlFontColors(w, sControl, sDisabledAlpha) end
function UtilityManager.registerCallback(t, fn) end
function UtilityManager.unregisterCallback(t, fn) end
function UtilityManager.performCallbacks(t, ...) end
function UtilityManager.performAllCallbacks(t, ...) end
function UtilityManager.registerKeyCallback(t, sKey, fn) end
function UtilityManager.unregisterKeyCallback(t, sKey, fn) end
function UtilityManager.performKeyCallbacks(t, sKey, ...) end
function UtilityManager.performAllKeyCallbacks(t, sKey, ...) end
function UtilityManager.setKeySingleCallback(t, sKey, fn) end
function UtilityManager.getKeySingleCallback(t, sKey) end
function UtilityManager.hasKeySingleCallback(t, sKey) end
function UtilityManager.performKeySingleCallback(t, sKey, ...) end
function UtilityManager.encodeRollToOOB(rRoll) end
function UtilityManager.decodeRollFromOOB(msgOOB) end
function UtilityManager.resolveDisplayToken(sToken, sName) end
function UtilityManager.resolveActorToken(v) end
function UtilityManager.getAssetBaseFileName(s) end
function UtilityManager.simplifyEncode(t, sKeyLimiter) end
function UtilityManager.helperSimplifyEncode(t, tEncode, sKeyPrefix) end
function UtilityManager.simplifyDecode(t, sKeyLimiter) end
function UtilityManager.encodeKVPToString(t) end
function UtilityManager.decodeKVPFromString(s) end
function UtilityManager.getNodeCategory(vNode) end
function UtilityManager.getNodeModule(vNode) end
