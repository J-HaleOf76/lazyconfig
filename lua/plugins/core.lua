-- [[ Core Plugins ]]
-- if true then
--   return {}
-- end
return {
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*", "!lazy" },
      buftype = { "*", "!prompt", "!nofile" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = false, -- "Name" codes like Blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes: foreground, background
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        virtualtext = "■",
      },
    },
  },
  {
    "folke/drop.nvim",
    event = "VeryLazy",
    enabled = true,
    config = true,
    -- config = function()
    --   math.randomseed(os.time())
    -- local theme = ({ "stars", "snow" })[math.random(1, 3)]
    --   require("drop").setup({ theme = theme })
    -- end,

    opts = {
      theme = "stars", --"snow",--"xmas", --"leaves", --"summer", --"spring" -- can be one of rhe default themes, or a custom theme
      max = 40, -- maximum number of drops on the screen
      interval = 150, -- every 150ms we update the drops
      screensaver = 1000 * 60 * 15, -- show after 5 minutes. Set to false, to disable
      filetypes = { "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
    },
  },
  -- Markdown preview in a flowting window.
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  --
  -- {
  --   "stevearc/aerial.nvim",
  --   config = true,
  --   --  config = function()
  --   --   require("aerial").setup()
  --   -- end,
  --   -- opts({
  --   --   {},
  --   -- }),
  -- },
}
