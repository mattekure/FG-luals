---@meta DiceManager

---@class DiceManager

DiceManager = {}

function DiceManager.onInit() end
function DiceManager.onTabletopInit() end
function DiceManager.initDiceState() end
function DiceManager.onDiceLaunched(draginfo) end
function DiceManager.getDiceIcon(sDie) end
function DiceManager.loadDesktopDiceState() end
function DiceManager.getDesktopDiceState(sDie) end
function DiceManager.setDesktopDiceState(sDie, bState) end
function DiceManager.populateDiceSelectWindow(w) end
function DiceManager.toggleDicePanelLock() end
function DiceManager.registerCustomDieEvalHandler(sDie, fnDie) end
function DiceManager.unregisterCustomDieEvalHandler(sDie) end
function DiceManager.getCustomDieMinValue(sDie) end
function DiceManager.getCustomDieMaxValue(sDie) end
function DiceManager.getCustomDieRandomValue(sDie) end
function DiceManager.getCustomDieManualHandler(sDie) end
function DiceManager.registerCustomPreEncodeRollHandler(fn) end
function DiceManager.unregisterCustomPreEncodeRollHandler(fn) end
function DiceManager.onPreEncodeRoll(...) end
function DiceManager.registerCustomPostDecodeRollHandler(fn) end
function DiceManager.unregisterCustomPostDecodeRollHandler(fn) end
function DiceManager.onPostDecodeRoll(...) end
function DiceManager.isValidDie(s) end
function DiceManager.isValidTerm(s) end
function DiceManager.convertDiceStringToTerms(s) end
function DiceManager.parseDiceTerm(s) end
function DiceManager.isDiceString(s) end
function DiceManager.isDiceMathString(s) end
function DiceManager.convertStringToDice(s, bClean) end
function DiceManager.convertDiceToString(tDice, nMod, bSign) end
function DiceManager.evalDiceString(s, tOption) end
function DiceManager.evalDice(tDice, nMod, tOption) end
function DiceManager.evalDie(sDieType, tOption) end
function DiceManager.evalDiceMathExpression(sParam, tOption) end
function DiceManager.handleManualRoll(tDice) end
function DiceManager.addDefaultD66Handling() end
function DiceManager.onD66RandomValue() end
function DiceManager.onD60RandomValue() end
function DiceManager.onD60ResultValue(result) end
function DiceManager.onD66PreEncodeRoll(tRoll) end
function DiceManager.onD66ChatDiceDrop(draginfo) end
function DiceManager.helperD66EncodeDice(tDice) end
