---@meta File

---@class File
File = {}

---(GM only.) Imports the graphic asset file at the given file path into the current campaign as the given asset type.
---@param filepath string The full file path of the text file to import.
---@param assettype string The type of asset to be imported.  Valid values are: “image”, “token”
function File.addCampaignAssetFile(filepath, assettype) end

---Returns the full path to the FG data folder for the current campaign.
---@return string # Campaign folder path
function File.getCampaignFolder() end

---Returns the full path to the FG data folder currently being used. The data folder path can vary depending on channel specified in Settings.
---@return string # FG data folder path
function File.getDataFolder() end

---Requests that the operating system open the folder for the current campaign.
function File.openCampaignFolder() end

---Requests that the operating system open the FG data folder. The data folder path can vary depending on channel specified in Settings.
function File.openDataFolder() end

---Returns the contents of a text file at the given file path.
---@param filepath string The full file path of the text file to open.
---@return string # Contents of the text file (or nil if does not exist)
function File.openTextFile(filepath) end

---Saves the given text into a text file at the given file path.
---@param filepath string The full file path of the text file to save.
---@param text string The text to save into the text file.
function File.saveTextFile(filepath, text) end
