---@meta CharWizardAbilitiesManager

---@class CharWizardAbilitiesManager

CharWizardAbilitiesManager = {}

function CharWizardAbilitiesManager.onInit() end
function CharWizardAbilitiesManager.performGenRoll() end
function CharWizardAbilitiesManager.onGenRoll(rSource, _, rRoll) end
function CharWizardAbilitiesManager.setGenMethod(w) end
function CharWizardAbilitiesManager.setAbilityBase(sAbility, n) end
function CharWizardAbilitiesManager.setAbilityMisc(sAbility, n) end
function CharWizardAbilitiesManager.updateAbilities() end
function CharWizardAbilitiesManager.updateAbilitiesTotal() end
function CharWizardAbilitiesManager.collectASIAbilities() end
function CharWizardAbilitiesManager.handleAbilityPointBuy(w, sAbility, nMod) end
function CharWizardAbilitiesManager.recalcAbilityPointsSpent(w) end
function CharWizardAbilitiesManager.handleAbilitySwapRight(sAbility) end
function CharWizardAbilitiesManager.handleAbilitySwapLeft(sAbility) end
function CharWizardAbilitiesManager.helperAbilitySwap(sAbility1, sAbility2) end
