-- # Tokyonight as a local plugin
-- if true then
--   return {}
-- end
--
-- Author: JJH
-- Date: Jan 20, 2024
-- Edit: Making my version of the Tokyonight Theme for personal use.
--

-- NOTE: Name:JJH-Tokyonight-Electric
-- This theme has a bunch of different extra themes for different apps like Wezterm
-- I can make this theme compile a new theme for all of the different apps inside of the extras folder
-- Then set the apps 'Wezterm' use the schemes that I made.
--
-- READ UP ON MAKING A NEW THEME FROM THIS
--

--TODO: 
--- darken the background colors
--- Find a nice Electric Blue color that will mix with the new background color
--- Make this load as the default colorscheme
--- Make the name different from the OG
--- TAKE BETTER NOTES ON THIS 
--
--
return{

  {
    --This should only look inside my dev directory for this.
    --
    --I should be able to have this use my github and by labelling it 'dev true' It should install inside my
    --dev folder. Dev_NeoVim - ./projects
    -- "J-HaleOf76/tokyonight.nvim",
    -- This is telling it to look in My github for the theme

    dir = "~/Dev_NeoVim/JJH-tokyonight-nvim",
    name = "JJH-Tokyonight-Electric",
    dev = true,
    lazy = false,
    priority = 1000,
    event = "VeryLazy",
    -- event = "User ColorSchemeLoad",

    --NOTE: should I be using opts{} ? YES
    --Try not using the config function unless needed
    --
    opts = {
      config = function ()
        require("JJH-Tokyonight-Electric").setup({
        -- require("tokyonight").setup({
          style = "night", -- this is from the OG docs for the setup
          terminal_colors = true,
          styles = {
            sidebars = dark,
            floats = dark,
            },
          sidebars = {"qf", "help", "edgy","terminal", "ui", "neo-tree","neotree",},
        })
      end,
    },

    vim.cmd([["colorscheme JJH-Tokyonight-Electric"]]),

  -- vim.cmd.colorscheme('JJH-Tokyonight-Electric'),
  },--End of plugin bracket

  -- I should only need this next line if I want to load the colorscheme at startup
  -- { "LazyVim/LazyVim", opts = { colorscheme = "JJH-Tokyonight-Electric" } },
}
