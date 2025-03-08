--[[ A screen saver for whatever filetypes you select 
-- Lots of new themes with July update
--]]
return{
  -- It seens simple enough to make a new theme with nerdfonts.
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
      theme = "matrix", --"stars", --"summer", --"snow",--"xmas", --"leaves", --"summer", --"spring" -- can be one of rhe default themes, or a custom theme
      max = 30, -- 40 -- maximum number of drops on the screen
      interval = 150, -- every 150ms we update the drops
      screensaver = 1000 * 60 * 15, -- show after 5 minutes. Set to false, to disable
      filetypes = { "snacks_dashboard", "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
      winblend = 100,
    },

-- {
--
--   ---@type DropTheme|string
--   theme = "auto", -- when auto, it will choose a theme based on the date
--   ---@type ({theme: string}|DropDate|{from:DropDate, to:DropDate}|{holiday:"us_thanksgiving"|"easter"})[]
--   themes = {
--     { theme = "new_year", month = 1, day = 1 },
--     { theme = "valentines_day", month = 2, day = 14 },
--     { theme = "st_patricks_day", month = 3, day = 17 },
--     { theme = "easter", holiday = "easter" },
--     { theme = "april_fools", month = 4, day = 1 },
--     { theme = "us_independence_day", month = 7, day = 4 },
--     { theme = "halloween", month = 10, day = 31 },
--     { theme = "us_thanksgiving", holiday = "us_thanksgiving" },
--     { theme = "xmas", from = { month = 12, day = 24 }, to = { month = 12, day = 25 } },
--     { theme = "leaves", from = { month = 9, day = 22 }, to = { month = 12, day = 20 } },
--     { theme = "snow", from = { month = 12, day = 21 }, to = { month = 3, day = 19 } },
--     { theme = "spring", from = { month = 3, day = 20 }, to = { month = 6, day = 20 } },
--     { theme = "summer", from = { month = 6, day = 21 }, to = { month = 9, day = 21 } },
--   },
--   max = 75, -- maximum number of drops on the screen
--   interval = 100, -- every 150ms we update the drops
--   screensaver = 1000 * 60 * 5, -- show after 5 minutes. Set to false, to disable
--   filetypes = { "dashboard", "alpha", "ministarter" }, -- will enable/disable automatically for the following filetypes
--   winblend = 100, -- winblend for the drop window
-- }
  },

}
