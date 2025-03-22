---@meta ImportUtilityManager

---@class ImportUtilityManager

ImportUtilityManager = {}

function ImportUtilityManager.showRecord(sRecordType, node) end
function ImportUtilityManager.setDefaultToken(node) end
function ImportUtilityManager.registerImportMode(sRecordType, sMode, sLabel, fn) end
function ImportUtilityManager.unregisterImportMode(sRecordType, sMode) end
function ImportUtilityManager.getImportMode(sRecordType, sMode) end
function ImportUtilityManager.populateImportModes(sRecordType, cCombo) end
function ImportUtilityManager.case_insensitive_pattern(pattern) end
function ImportUtilityManager.cleanUpText(s) end
function ImportUtilityManager.internalCleanUpCharacters(s) end
function ImportUtilityManager.internalCleanUpCombineParagraphs(s) end
function ImportUtilityManager.internalCleanUpHTML(s) end
function ImportUtilityManager.cleanTableHTML(s) end
function ImportUtilityManager.removePTagsFromSpecificElements(html) end
function ImportUtilityManager.internalCleanUpPar5EMarkup(s) end
function ImportUtilityManager.replaceHTMLTag(s, inTag, inOpenReplacement, inCloseReplacement, bStripParagraph) end
function ImportUtilityManager.unescapeHTML(s) end
function ImportUtilityManager.replaceFGTag(s, inTag, inOpenReplacement, inCloseReplacement, bStripParagraph) end
function ImportUtilityManager.stripHTMLTag(s, inTag, _, _, bStripParagraph) end
function ImportUtilityManager.convertPAR5ETables(s) end
function ImportUtilityManager.convertPAR5ETable(s) end
function ImportUtilityManager.convertPAR5ELists(s) end
function ImportUtilityManager.convertPAR5EList(s) end
function ImportUtilityManager.convertPAR5EParagraphLeadins(s) end
function ImportUtilityManager.convertPAR5EParagraphs(s) end
function ImportUtilityManager.convertPAR5EHeaders(s) end
function ImportUtilityManager.parseFormattedTextToLines(s) end
function ImportUtilityManager.parseFormattedTextToLinesWithTags(s) end
