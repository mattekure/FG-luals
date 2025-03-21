---@meta StringManager

---@class StringManager
StringManager = {}

-----------------------
--  EXISTENCE FUNCTIONS
-----------------------

--- @param s string Input String to check
--- @param sCheck string String to search for
--- @return boolean # Whether or not s starts with sCheck
function StringManager.startsWith(s, sCheck)
end

--- @param s string Input String to check
--- @param sCheck string String to search for
--- @return boolean # Whether or not s ends with sCheck
function StringManager.endsWith(s, sCheck)
end

--- @param sWord string Word to check
--- @param vTarget string|table String or Table to check
--- @return boolean # Whether or not sWord is vTarget, or is in vTarget
function StringManager.isWord(sWord, vTarget)
end

--- @param aWords string|table String or Table of words to check
--- @param nIndex number Starting index to check
--- @param aPhrase string|table String or Table phrase to check
--- @return boolean # Whether or not aWords is within aPhrase
function StringManager.isPhrase(aWords, nIndex, aPhrase)
end

--- @param s string String to check
--- @return boolean # Whether the string is in the correct format to be considered a number
function StringManager.isNumberString(s)
end

-----------------------
-- SET FUNCTIONS
-----------------------

--- @param tList table List to check
--- @param sItem string String to search for
--- @return boolean # Whether or not tList contains sItem
function StringManager.contains(tList, sItem)
end

--- @param tList table List to check
--- @param tSubList table List to look for
--- @return boolean # Whether or not tList contains tSubList
function StringManager.containsRange(tList, tSubList)
end

--- @param tList table List of words for autocompletion
--- @param sItem string String to check for autocompletion
--- @param bIgnoreCase boolean Ignore Case
--- @return string|nil # Returns autocompleted string if found, or nil
function StringManager.autoComplete(tList, sItem, bIgnoreCase)
end

-----------------------
-- MODIFY FUNCTIONS
-----------------------

--- Strips parenthesized text and extra spaces
--- @param s string
--- @return string
function StringManager.sanitize(s)
end

---Strips punctuation, parentheses, brackets, spaces; then converts to lower case
--- @param s string
--- @return string
function StringManager.simplify(s)
end

--- Strips extra spaces
--- @param s string
--- @return string
function StringManager.strip(s)
end

--- Capitalize first letter in string
--- @param s string
--- @return string
function StringManager.capitalize(s)
end

--- Capitalize every word in string
--- @param s string
--- @return string
function StringManager.capitalizeAll(s)
end

--- Capitalize every word in string
--- @param s string
--- @return string
function StringManager.titleCase(s)
end

--- @param s string Input string
--- @param aPatterns string|table Pattern(s) of what to replace
--- @param sReplace string Replacement string
--- @return string # The return string
function StringManager.multireplace(s, aPatterns, sReplace)
end

--- @param s string
--- @return string
function StringManager.addTrailing(s, c)
end

--- @param s string Input string
--- @param nStart number Start position of extract
--- @param nEnd number End position of extract
--- @return string # Extracted string
--- @return string # Remainder of string
function StringManager.extract(s, nStart, nEnd)
end

--- @param s string Input String
--- @param sPattern string Pattern to search for
--- @return string # Extracted string
function StringManager.extractPattern(s, sPattern)
end

--- Combines two or more strings with separator
--- @param sSeparator string Separator String
--- @param ... string Strings to combine
--- @return string # Combined string
function StringManager.combine(sSeparator, ...)
end

--- Creates a string from a number with ordanilized ending.  ie. 3rd, 5th
--- @param n number
--- @return string
function StringManager.ordinalize(n)
end

-----------------------
-- TRIM FUNCTIONS
-----------------------
-- Strips any spacing characters from the beginning and end of a string.
--
-- The function returns the following parameters:
--   1. The trimmed string
--   2. The starting position of the trimmed string within the original string
--   3. The ending position of the trimmed string within the original string
--

--- @param s string
function StringManager.trim(s)
end

--- Finds the starting and ending position of string surrounded by white space.
--- @param s string
--- @return number # Starting position of non-whitespace
--- @return number # Ending position of non-whitespace
function StringManager.trimfind(s)
end

-----------------------
-- PARSE FUNCTIONS
-----------------------

--- @param s string
--- @param extra_delimiters
--- @return table # Table of strings
--- @return table # table of string stats
function StringManager.parseWords(s, extra_delimiters)
end

--- @param s string
--- @param extra_delimiters string
--- @return table
function StringManager.splitWords(s, extra_delimiters)
end

--- @param s string
--- @param extra_delimiters string
--- @return table
function StringManager.splitTokens(s, extra_delimiters)
end

--- Splits a string by newline
--- @param s string
--- @return table
function StringManager.splitLines(s)
end

-----------------------
-- SPLIT FUNCTIONS
-----------------------
-- The source string is divided into substrings as defined by the delimiters parameter.
-- Each resulting string is stored in a table along with the start and end position of
-- the result string within the original string.  The result tables are combined into
-- a table which is then returned.
--
-- NOTE: Set trimspace flag to trim any spaces that trail delimiters before next result
-- string
--

--- @param sToSplit string
--- @param sDelimiters string
--- @param bTrimSpace boolean
--- @return table # Table of strings
--- @return table # Table String stats including start/end position of splits
function StringManager.split(sToSplit, sDelimiters, bTrimSpace)
end

--- @param sToSplit string
--- @param sPattern string
--- @param bTrimSpace boolean
--- @return table # Table of strings
function StringManager.splitByPattern(sToSplit, sPattern, bTrimSpace)
end

-----------------------
--  CONVERSION FUNCTIONS
-----------------------

--- @param s string
--- @param bClean
--- @return any # Dice object
function StringManager.convertStringToDice(s, bClean)
end

--- @param aDice table Dice object
--- @param nMod number Modifier
--- @param bSign boolean
--- @return string
function StringManager.convertDiceToString(aDice, nMod, bSign)
end

--- @param s string
--- @return table # Table containing x,y coordinates of the point
function StringManager.convertStringToPoint(s)
end

--- @param tPoint table Table containing x,y
--- @return string
function StringManager.convertPointToString(tPoint)
end

--- @param n number
--- @return string
function StringManager.convertNumberToAlpha(n)
end

-----------------------
--  DICE FUNCTIONS
-----------------------

--- @param s string
--- @return boolean
function StringManager.isDiceString(s)
end

--- @param s string
--- @return boolean
function StringManager.isDiceMathString(s)
end

--- @param s string
--- @param bMaxDice boolean
function StringManager.evalDiceString(s, _, bMaxDice)
end

--- @param tDice table
--- @param nMod number
--- @param bMax boolean
function StringManager.evalDice(tDice, nMod, bMax)
end

--- @param s string
--- @param bMaxDice boolean
function StringManager.evalDiceMathExpression(s, bMaxDice)
end
