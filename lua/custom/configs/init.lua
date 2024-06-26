require("custom.configs.harpoon")
require("custom.configs.undotree")
require("custom.configs.nvim-tree")
require("custom.configs.neogit")
require("custom.configs.lualine")
require("custom.configs.todo-comments")
require("custom.configs.refactoring")
require("custom.configs.vimtex")
require("custom.configs.themes")
require("custom.configs.telescope-ui-select")

-- require("custom.configs.nordic")
vim.cmd([[ hi SignColumn guibg=Normal]]) -- removes the shading from the side column ( major w )
-- require('lspconfig').clangd.setup {}     -- lsp setup for clang? holy moly it worked
-- TODO: need to make sure the lsp things actually work, not sure if they do 
local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
lspconfig.clangd.setup({ capabilities = lsp_capabilities })



