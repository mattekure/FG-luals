---@meta CharAttunementManager

---@class CharAttunementManager

CharAttunementManager = {}

function CharAttunementManager.onInit() end
function CharAttunementManager.onOptionChanged() end
function CharAttunementManager.onCharProfBonusUpdate(nodeProfBonus) end
function CharAttunementManager.onCharAttuneBonusUpdate(nodeAttuneBonus) end
function CharAttunementManager.onCharItemAttuneUpdate(nodeAttuneUse) end
function CharAttunementManager.onCharItemDelete(nodeItem) end
function CharAttunementManager.getBaseSlots(nodeChar) end
function CharAttunementManager.getTotalSlots(nodeChar) end
function CharAttunementManager.getUsedSlots(nodeChar) end
function CharAttunementManager.doesItemAllowAttunement(nodeItem) end
function CharAttunementManager.onAttuneCalcChange(nodeChar) end
