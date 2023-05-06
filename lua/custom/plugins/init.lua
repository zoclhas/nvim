-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
local pluginConfs = require "custom.plugins.configs"

return {
  ["tzachar/cmp-tabnine"] = {
     after = "nvim-cmp",
     run = "./install.sh",
     config = pluginConfs.tabnine
  },
}