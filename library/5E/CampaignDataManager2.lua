---@meta CampaignDataManager2

---@class CampaignDataManager2

CampaignDataManager2 = {}

function CampaignDataManager2.handleDrop(sTarget, draginfo) end
function CampaignDataManager2.handleSubclassDrop(draginfo) end
function CampaignDataManager2.handleAncestryDrop(draginfo) end
function CampaignDataManager2.handleKitItemDrop(draginfo, nodeTarget) end
function CampaignDataManager2.lookupCharData(sRecord, aRefModules) end
function CampaignDataManager2.addPregenChar(nodeSource) end
function CampaignDataManager2.onEncounterGenerated(nodeEncounter) end
function CampaignDataManager2.updateNPCSpells(nodeNPC) end
function CampaignDataManager2.updateNPCSpellcasting(nodeNPC, _) end
function CampaignDataManager2.resetNPCSpellcastingSlots(nodeNPC, _) end
function CampaignDataManager2.updateNPCInnateSpellcasting(nodeNPC, _) end
function CampaignDataManager2.updateNPCActionSpellcasting(nodeNPC, _) end
function CampaignDataManager2.updateNPCSpellHelper(sSpell, nodeNPC, bInnate, nDaily) end
function CampaignDataManager2.addNPCSpell(nodeNPC, nodeSpellSource, bInnate, nDaily) end
function CampaignDataManager2.helperOldSubclassCopy(nodeSource) end
function CampaignDataManager2.helperOldAncestryCopy(nodeSource) end
