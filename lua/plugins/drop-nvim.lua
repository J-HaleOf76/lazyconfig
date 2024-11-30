--[[ A screen saver for whatever filetypes you select ]]
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
      theme = "snow", --"stars", --"summer", --"snow",--"xmas", --"leaves", --"summer", --"spring" -- can be one of rhe default themes, or a custom theme
      max = 50, -- 40 -- maximum number of drops on the screen
      interval = 250, -- every 150ms we update the drops
      screensaver = 1000 * 60 * 5, -- show after 5 minutes. Set to false, to disable
      filetypes = { "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
    },
  },

}
