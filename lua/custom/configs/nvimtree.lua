-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.keymap.set('n', '<leader>f', ':NvimTreeToggle', {})

config = {}

config.view = {}
config.view.adaptive_size = true
config.view.side = 'right'
config.view.width = 40

config.renderer = {}
config.renderer.group_empty = true

config.renderer.special_files = {
  'Cargo.toml',
  'Makefile',
  'CMakeLists.txt',
  'config.bash',
  'config.sh',
  'config',
  'README.md',
  'readme.md',
  'LICENSE',
  'DEVELOPMENT.md',
  'DEVELOPING.md',
  'package.json',
  '.nvimrc',
}
config.renderer.highlight_git = true
config.renderer.highlight_diagnostics = true
-- config.renderer.highlight_opened_files = "none"
-- config.renderer.highlight_modified     = "none"
config.renderer.highlight_bookmarks = 'all'
config.renderer.highlight_clipboard = 'all'

config.renderer.icons = {}
config.renderer.icons.webdev_colors = false
config.renderer.icons.git_placement = 'after'
config.renderer.icons.modified_placement = 'after'
config.renderer.icons.glyphs = {
  git = {
    -- Git style symbols
    unstaged = 'U',
    staged = 'A',
    unmerged = 'M',
    renamed = 'R',
    untracked = '?',
    deleted = 'D',
    ignored = '!',
  },
}

config.filters = {}
config.filters.dotfiles = false
config.filters.custom = {}

config.git = {}
config.git.enable = true
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup(config)
  end,
}
