---@meta ColorManager

---@class ColorManager

ColorManager = {}

function ColorManager.onTabletopInit() end
function ColorManager.getUIColor(sKey) end
function ColorManager.setUIColor(sKey, v) end
function ColorManager.setStandardDarkUIHealthColors() end
function ColorManager.resetUIColors() end
function ColorManager.resetUISidebarColors() end
function ColorManager.resetUIWindowMenuColors() end
function ColorManager.resetUIGeneralButtonColors() end
function ColorManager.resetUIGeneralBarColors() end
function ColorManager.resetUIHealthColors() end
function ColorManager.resetTokenColors() end
function ColorManager.resetTokenFactionColors() end
function ColorManager.resetTokenHealthColors() end
function ColorManager.getSidebarCategoryIconColor() end
function ColorManager.getSidebarCategoryTextColor() end
function ColorManager.getSidebarRecordIconColor() end
function ColorManager.getSidebarRecordTextColor() end
function ColorManager.setSidebarCategoryIconColor(s) end
function ColorManager.setSidebarCategoryTextColor(s) end
function ColorManager.setSidebarRecordIconColor(s) end
function ColorManager.setSidebarRecordTextColor(s) end
function ColorManager.getUsageColor(nPercentUsed, bBar) end
function ColorManager.getTieredUsageColor(nPercentUsed) end
function ColorManager.getGradientUsageColor(nPercentUsed) end
function ColorManager.getHealthColor(nPercentWounded, bBar) end
function ColorManager.getTieredHealthColor(nPercentWounded) end
function ColorManager.getGradientHealthColor(nPercentWounded) end
function ColorManager.getTokenHealthColor(nPercentWounded, bBar) end
function ColorManager.getTieredTokenHealthColor(nPercentWounded) end
function ColorManager.getGradientTokenHealthColor(nPercentWounded) end
function ColorManager.setButtonContentColor(s) end
function ColorManager.setButtonIconColor(s) end
function ColorManager.getButtonIconColor() end
function ColorManager.setButtonTextColor(s) end
function ColorManager.getButtonTextColor() end
function ColorManager.setWindowMenuIconColor(s) end
function ColorManager.getWindowMenuIconColor() end
function ColorManager.generateRandomSolidColorString() end
function ColorManager.generateContrastingColorString(s) end
function ColorManager.convertColorStringToRGBA(s) end
function ColorManager.convertRGBAToColorString(nR, nG, nB, nAlpha) end
function ColorManager.helperGetRGBRelativeLuminance(nR1, nG1, nB1, nR2, nG2, nB2) end
function ColorManager.helperGetRGBLuminance(nR, nG, nB) end
function ColorManager.convertRGBtoHSV(nR, nG, nB) end
function ColorManager.convertHSVtoRGB(nH, nS, nV) end
