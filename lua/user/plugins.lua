
-- Additional Plugins
lvim.plugins = {
  { "lunarvim/colorschemes" },
  -- { "folke/tokyonight.nvim" },
  -- {
  --   "abecodes/tabout.nvim",
  --   config = function()
  --     require("user.tabout").config()
  --   end,
  --   wants = { "nvim-treesitter" }, -- or require if not used so far
  --   after = { "nvim-cmp", "LuaSnip" }, -- if a completion plugin is using tabs load it before
  -- },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("user.renamer").config()
    end,
    branch = "master",
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function()
  --     require("user.lsp_signature").config()
  --   end,
  -- },
  {
    "unblevable/quick-scope",
    config = function()
      require "user.quickscope"
    end,
  },
  {
    "kevinhwang91/rnvimr",
    config = function()
      require "user.rnvimr"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    -- event = "BufReadPre",
    config = function()
      require("user.blankline").config()
    end,
  },

  {
    "f-person/git-blame.nvim",
    config = function()
      vim.g.gitblame_enabled = 0
      vim.g.gitblame_message_template = "<summary> • <date> • <author>"
      vim.g.gitblame_highlight_group = "LineNr"
    end,
  },

  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("user.gitlinker").config()
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("user.hop").config()
    end,
  },
  {
    -- Note for this to work you need to create a pat and put it in `~/.gist-vim` as <token XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX>
    -- You will also need to set github username like:
    --
    -- [user]
    --	 email = chris.machine@pm.me
    --   name = Christian Chiarulli
    -- [github]
    --   user = ChristianChiarulli
    --	 email = chris.machine@pm.me
    "mattn/vim-gist",
    requires = "mattn/webapi-vim",
    config = function()
      vim.g.gist_open_browser_after_post = 1
    end,
  },
  -- {
  --   "tamago324/lir.nvim",
  --   config = function()
  --     require ("user.lir").config()
  --   end,
  -- },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      require "user.matchup"
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("user.numb").config()
    end,
  },
  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function()
      require("user.dial").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
  },
  -- {
  --   "vuki656/package-info.nvim",
  --   config = function()
  --     require "user.package-info"
  --   end,
  --   -- ft = "json",
  -- },
  {
    "simrat39/symbols-outline.nvim",
    -- cmd = "SymbolsOutline",
    config = function()
      require("user.outline").config()
    end,
  },

  -- TODO: maybe oneday
  --   { "gelguy/wilder.nvim",
  --     config = function ()
  --       -- vim.cmd("source $HOME/.config/lvim/lua/user/wilder.vim")
  --       vim.cmd([[
  --         call wilder#setup({'modes': [':', '/', '?']})
  --       ]])
  --     end
  --   },
  -- {
  --   "folke/twilight.nvim",
  --   config = function()
  --     require("user.twilight").config()
  --   end,
  --   -- cmd = "ZenMode",
  -- },
  --

  -- NOTE: Whichkey breaks this unfortunately
  {
    "MattesGroeger/vim-bookmarks",
    config = function()
      -- highlight BookmarkSign ctermbg=NONE ctermfg=160
      -- highlight BookmarkLine ctermbg=194 ctermfg=NONE
      vim.g.bookmark_sign = ""
      vim.g.bookmark_annotation_sign = '☰'
      vim.g.bookmark_no_default_key_mappings = 1
      vim.g.bookmark_auto_save = 0
      vim.g.bookmark_auto_close = 0
      vim.g.bookmark_manage_per_buffer = 0
      vim.g.bookmark_save_per_working_dir = 0
      -- vim.g.bookmark_highlight_lines = 1
      vim.g.bookmark_show_warning = 0
      vim.g.bookmark_center = 1
      vim.g.bookmark_location_list = 0
      vim.g.bookmark_disable_ctrlp = 1
      vim.g.bookmark_display_annotation = 0
      -- vim.g.bookmark_auto_save_file = '~/.config/lvim/bookmarks'
    end,
    commit = "a86f6387a5dabf0102b4cab433b414a29456f792"
  },
  {
    'tom-anders/telescope-vim-bookmarks.nvim'
  },
  {
      "pechorin/any-jump.vim",
      config = function() 
        vim.g.any_jump_disable_default_keybindings = 1
        vim.g.any_jump_ignored_files = {"*.tmp", "*.temp", "/vendor/.*", ".git/*"}
        vim.g.any_jump_search_prefered_engine = "ag"
      end,
  },
  {
    "vim-test/vim-test",
     config = function() 
       vim.g["test#strategy"] = "neovim"
     end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
        },
        server = {
          cmd = { vim.fn.stdpath "data" .. "/lsp_servers/rust/rust-analyzer" },
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        },
        })
    end,
    ft = { "rust", "rs" },
  },
  -- {
  --   "kristijanhusak/orgmode.nvim",
  --   config = function()
  --     require("user.orgmode").config()
  --   end,
  -- },
}
