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
    -- Dap Mappings
    ["<leader>dh"] = {
      function ()
        require('dap').toggle_breakpoint()
      end
      , "toggle breakpoint", opts = {nowait = true} },
    ["<S-k>"] = {
      function ()
        require('dap').step_out()
      end
      , "", opts = {nowait = true} },
    ["<S-l>"] = {
      function ()
        require('dap').step_into()
      end
      , "", opts = {nowait = true} },
    ["<S-j>"] = {
      function ()
        require('dap').step_over()
      end
      , "", opts = {nowait = true} },
    ["<leader>dn"] = {
      function ()
        require('dap').continue()
      end
      , "", opts = {nowait = true} },
    ["<leader>dr"] = {
      function ()
        require('dap').repl.open({}, 'vsplit')
      end
      , "", opts = {nowait = true} },
    ["<leader>di"] = {
      function ()
        require('dap.ui.widgets').hover(function () return vim.fn.expand("<cexpr>") end)
      end
      , "", opts = {nowait = true} },
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
