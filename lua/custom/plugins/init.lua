-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  "nvim-lua/plenary.nvim", -- required
  -- theme
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require 'nordic'.load()
    end
  },

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = ...
  },
  -- Prime
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'evanleck/vim-svelte', branch = 'main'
  },
  "mbbill/undotree",

  -- core
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",

      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  'rhysd/conflict-marker.vim',
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },


    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle <CR>", {})
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
  {

    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      {

        "<leader>tt", -- toggle trouble
        "<cmd>Trouble diagnostics toggle <cr>",
        desc = "Diagnostics (Trouble)",
      },
    }
  },

  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup(config)
    end,
  },

  {
    "lervag/vimtex",
    init = function()
      -- Use init for configuration, don't use the more common "config".
    end
  },

  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('render-markdown').setup({})
    end,
  },
  -- for hopping
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
      keys = 'etovxqpdygfblzhckisuran'
    }
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",   -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      -- maybe we dont really need these
      -- "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
    },
  },

  'nvim-telescope/telescope-ui-select.nvim',
  -- language
  'othree/html5.vim',
  'pangloss/vim-javascript',
  -- not sure if we really need this yet
  -- {
  --  'mrcjkb/rustaceanvim',
  --  version = '^4',
  --  lazy = false,
  -- }

}
