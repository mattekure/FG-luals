---@meta CharWeaponManager

---@class CharWeaponManager

CharWeaponManager = {}

function CharWeaponManager.onInit() end
function CharWeaponManager.addToWeaponDB(nodeItem) end
function CharWeaponManager.removeFromWeaponDB(nodeItem) end
function CharWeaponManager.onItemIDChanged(nodeItemID) end
function CharWeaponManager.checkWeaponIDChange(nodeWeapon) end
function CharWeaponManager.getRange(_, nodeWeapon) end
function CharWeaponManager.getCritRange(nodeChar, nodeWeapon) end
function CharWeaponManager.checkProperty(v, sTargetProperty) end
function CharWeaponManager.getProperty(v, sTargetPattern) end
function CharWeaponManager.getPropertyNumber(v, sTargetPattern) end
function CharWeaponManager.getAttackAbility(nodeChar, nodeWeapon) end
function CharWeaponManager.getAttackBonus(nodeChar, nodeWeapon) end
function CharWeaponManager.onWeaponMasteryChanged(nodeWeapon) end
function CharWeaponManager.buildAttackAction(nodeChar, nodeWeapon) end
function CharWeaponManager.decrementAmmo(nodeChar, nodeWeapon) end
function CharWeaponManager.getDamageBaseAbility(nodeChar, nodeWeapon) end
function CharWeaponManager.getDamageClauses(nodeChar, nodeWeapon, sBaseAbility, nReroll) end
function CharWeaponManager.buildDamageAction(nodeChar, nodeWeapon) end
function CharWeaponManager.buildDamageString(nodeChar, nodeWeapon) end
