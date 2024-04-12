local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {"omnisharp", "html", "cssls", "tsserver", "clangd", "tailwindcss", "gopls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


local util = require("lspconfig/util")

local pid = vim.fn.getpid()

lspconfig.omnisharp.setup{
  cmd = {"/Users/carlos/.local/share/nvim/mason/packages/omnisharp/omnisharp", "--languageserver", "--hostPID", tostring(pid)},
}

lspconfig.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      gofumpt = true,
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    }
  }
}

-- 
-- lspconfig.pyright.setup { blabla}
