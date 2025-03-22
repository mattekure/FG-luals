---@meta CombatListManager

---@class CombatListManager

CombatListManager = {}

function CombatListManager.onTabletopInit() end
function CombatListManager.isEnabled() end
function CombatListManager.setEnabled(bValue) end
function CombatListManager.getCustomDisplayBuild() end
function CombatListManager.setCustomDisplayBuild(fn) end
function CombatListManager.registerStandardInitSupport() end
function CombatListManager.onFactionUpdate(nodeField) end
function CombatListManager.addActorDisplayFaction(cDisplay, rActor) end
function CombatListManager.onInitResultUpdate(nodeField) end
function CombatListManager.addActorDisplayDefaultInitResult(cDisplay, rActor) end
function CombatListManager.registerSWSupport() end
function CombatListManager.onSWADEInitResultUpdate(nodeField) end
function CombatListManager.addActorDisplaySWADEInitResult(cDisplay, rActor) end
function CombatListManager.register2D20Support() end
function CombatListManager.custom2D20Build(tData) end
function CombatListManager.setupCombatIntegration() end
function CombatListManager.addActorDisplayTokenVis(cDisplay, rActor) end
function CombatListManager.onTokenVisUpdate(nodeField) end
function CombatListManager.setupOptionsIntegration() end
function CombatListManager.onOptionUpdate() end
function CombatListManager.registerWindow(w) end
function CombatListManager.getWindow() end
function CombatListManager.resizeWindow() end
function CombatListManager.setEntryClass(s) end
function CombatListManager.getEntryClass() end
function CombatListManager.getDisplayList() end
function CombatListManager.clearDisplayList() end
function CombatListManager.getDisplayControlByPath(sPath) end
function CombatListManager.createEORControl(w, tData) end
function CombatListManager.destroyEORControl() end
function CombatListManager.refreshDisplayList() end
function CombatListManager.initDisplayRefresh() end
function CombatListManager.buildDisplayData(tData) end
function CombatListManager.defaultDisplayBuild(tData) end
function CombatListManager.synchDisplayEntries(w, tData) end
function CombatListManager.updateDisplayList(w) end
function CombatListManager.createEntry(w, tData) end
function CombatListManager.createEndOfRound(w, tData) end
function CombatListManager.destroyEntry(c) end
