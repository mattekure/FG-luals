---@meta StringUTF8Manager

---@class StringUTF8Manager

StringUTF8Manager = {}

function StringUTF8Manager.isContinuationByte(c) end
function StringUTF8Manager.len(s) end
function StringUTF8Manager.offset(s, n) end
function StringUTF8Manager.getSubstringPositive(s, i, j) end
