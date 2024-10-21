require("custom.configs.harpoon")
require("custom.configs.undotree")
require("custom.configs.neogit")
require("custom.configs.lualine")
require("custom.configs.todo-comments")
require("custom.configs.refactoring")
require("custom.configs.vimtex")
require("custom.configs.gruvbox")
require("custom.configs.telescope-ui-select")
require("custom.configs.hop")

-- require("custom.configs.nordic")
vim.cmd([[ hi SignColumn guibg=Normal]]) -- removes the shading from the side column ( major w )
-- require('lspconfig').clangd.setup {}     -- lsp setup for clang? holy moly it worked

local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Function to check if the file type is .proto
local function on_attach(client)
  local filetype = vim.bo.filetype;
  if filetype == "proto" then
    client.stop()
  end
end

-- Setup clangd with the custom on_attach function
lspconfig.clangd.setup({
  capabilities = lsp_capabilities,
  on_attach = on_attach
})

lspconfig.clangd.setup({
  capabilities = lsp_capabilities,
  on_attach = on_attach

})
