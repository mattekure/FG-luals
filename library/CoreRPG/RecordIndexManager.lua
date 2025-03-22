---@meta RecordIndexManager

---@class RecordIndexManager

RecordIndexManager = {}

function RecordIndexManager.getItemDisplayClass(sRecordType) end
function RecordIndexManager.getButtons(sRecordType) end
function RecordIndexManager.addButton(sRecordType, sTemplate) end
function RecordIndexManager.removeButton(sRecordType, sTemplate) end
function RecordIndexManager.getEditButtons(sRecordType) end
function RecordIndexManager.getCustomFilters(sRecordType) end
function RecordIndexManager.getCategoryMode(sRecordType) end
function RecordIndexManager.getEditMode(sRecordType) end
