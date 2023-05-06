---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local pluginConfs = require "custom.plugins.configs"

M.ui = {
  theme = "jellybeans",
  theme_toggle = { "jellybeans", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["hrsh7th/nvim-cmp"] = pluginConfs.cmp,
    ["tzachar/cmp-tabnine"] = pluginConfs.tabnine
  }
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
