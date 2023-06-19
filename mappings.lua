---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tt"] = {
      function ()
        require('base46').toggle_transparency()
      end,
     },
  },
}

M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = "",
  }
}

-- more keybinds!

return M
