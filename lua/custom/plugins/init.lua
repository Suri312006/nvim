-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = ...,
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = true,
  },
  -- {
  --   'rolv-apneseth/tfm.nvim',
  --   lazy = false,
  --   opts = {
  --     -- TFM to use
  --     -- Possible choices: "ranger" | "nnn" | "lf" | "vifm" | "yazi" (default)
  --     file_manager = 'yazi',
  --     -- Replace netrw entirely
  --     -- Default: false
  --     replace_netrw = true,
  --     -- Enable creation of commands
  --     -- Default: false
  --     -- Commands:
  --     --   Tfm: selected file(s) will be opened in the current window
  --     --   TfmSplit: selected file(s) will be opened in a horizontal split
  --     --   TfmVsplit: selected file(s) will be opened in a vertical split
  --     --   TfmTabedit: selected file(s) will be opened in a new tab page
  --     enable_cmds = true,
  --     -- Custom keybindings only applied within the TFM buffer
  --     -- Default: {}
  --     keybindings = {
  --       ['<ESC>'] = 'q',
  --       -- Override the open mode (i.e. vertical/horizontal split, new tab)
  --       -- Tip: you can add an extra `<CR>` to the end of these to immediately open the selected file(s) (assuming the TFM uses `enter` to finalise selection) (i did this)
  --       ['<C-v>'] = "<C-\\><C-O>:lua require('tfm').set_next_open_mode(require('tfm').OPEN_MODE.vsplit)<CR><CR>",
  --       ['<C-x>'] = "<C-\\><C-O>:lua require('tfm').set_next_open_mode(require('tfm').OPEN_MODE.split)<CR><CR>",
  --       ['<C-t>'] = "<C-\\><C-O>:lua require('tfm').set_next_open_mode(require('tfm').OPEN_MODE.tabedit)<CR><CR>",
  --     },
  --     -- Customise UI. The below options are the default
  --     ui = {
  --       border = 'rounded',
  --       height = 1,
  --       width = 1,
  --       x = 0.5,
  --       y = 0.5,
  --     },
  --   },
  --   keys = {
  --     -- Make sure to change these keybindings to your preference,
  --     -- and remove the ones you won't use
  --     {
  --       '<leader>f',
  --       ':Tfm<CR>',
  --       desc = 'TFM',
  --     },
  --     -- {
  --     --   '<leader>mh',
  --     --   ':TfmSplit<CR>',
  --     --   desc = 'TFM - horizontal split',
  --     -- },
  --     -- {
  --     --   '<leader>mv',
  --     --   ':TfmVsplit<CR>',
  --     --   desc = 'TFM - vertical split',
  --     -- },
  --     -- {
  --     --   '<leader>mt',
  --     --   ':TfmTabedit<CR>',
  --     --   desc = 'TFM - new tab',
  --     -- },
  --   },
  -- },
  'rhysd/conflict-marker.vim',
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },
  {

    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
    keys = {
      {

        '<leader>tt', -- toggle trouble
        '<cmd>Trouble diagnostics toggle <cr>',
        desc = 'Diagnostics (Trouble)',
      },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('refactoring').setup(config)
    end,
  },
  {
    'lervag/vimtex',
    init = function()
      -- Use init for configuration, don't use the more common "config".
    end,
  },
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('render-markdown').setup {}
    end,
  },
  {
    'jiaoshijie/undotree',
    dependencies = 'nvim-lua/plenary.nvim',
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  -- for hopping
  {
    'smoka7/hop.nvim',
    version = '*',
    opts = {
      keys = 'etovxqpdygfblzhckisuran',
    },
  },
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim', -- required by telescope
      'MunifTanjim/nui.nvim',

      -- optional
      'nvim-treesitter/nvim-treesitter',
      -- maybe we dont really need these
      -- "rcarriga/nvim-notify",
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      -- configuration goes here
    },
  },

  'nvim-telescope/telescope-ui-select.nvim',
  -- language
  'othree/html5.vim',
  'pangloss/vim-javascript',
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  'nvim-tree/nvim-web-devicons',
}
