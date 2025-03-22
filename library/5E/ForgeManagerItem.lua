---@meta ForgeManagerItem

---@class ForgeManagerItem

ForgeManagerItem = {}

function ForgeManagerItem.setStatus(w, sStatusIcon, sStatus) end
function ForgeManagerItem.clearStatus(w) end
function ForgeManagerItem.onDrop(w, draginfo) end
function ForgeManagerItem.addBaseItem(sClass, sRecord) end
function ForgeManagerItem.addTemplate(sClass, sRecord) end
function ForgeManagerItem.addSpellAsTemplate(sClass, sRecord) end
function ForgeManagerItem.getRarityBasedOnLevel(level) end
function ForgeManagerItem.reset() end
function ForgeManagerItem.forgeMagicItem(w) end
function ForgeManagerItem.getDisplayType(node) end
function ForgeManagerItem.getCompatibilityType(node) end
function ForgeManagerItem.isCompatible() end
function ForgeManagerItem.createMagicItem() end
function ForgeManagerItem.getItemDescBonus(sDesc) end
function ForgeManagerItem.getItemRarityValue(sRarity) end
function ForgeManagerItem.getItemStats(node) end
function ForgeManagerItem.getMagicItemValue(sCost, sRarity)  end
function ForgeManagerItem.parseCost(sCost) end
function ForgeManagerItem.convertToCP(value, unit) end
function ForgeManagerItem.formatWithCommas(amount) end
function ForgeManagerItem.convertFromCP(cpTotal) end
function ForgeManagerItem.combineCosts(rMagicItem, rTemplate) end
function ForgeManagerItem.addMagicItemToCampaign(rMagicItem) end
