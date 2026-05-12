require("config.lazy")
require("config.settings")
require("config.remap")

-- Try load local settings
local _, local_settings = pcall(require, "config.local-settings")
