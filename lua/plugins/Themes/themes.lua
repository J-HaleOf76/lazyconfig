--[[
--Author: JJH
--Date: Feb 3, 2024
--Module: LazyVim Themes Setup
--
--FIX: File #1
--These need a setup call to be installed
--
--
--]]--
-- This is the themes or colorschemes module for installing the themes in bulk.
-- The idea is that this will install and another module will be used for the individual configurations of the themes.
--
-- Using an autocomand and a keymap might be the simplist way to do this.
-- * Give the colorschemes an event = "User ColorSchemeLoad"
-- * Make an autocomand to call that event with a custom keymap
--
--NOTE: Make sure to require the other parts of this.
--Lets make this in parts
--1st get all the themes in here. Inside a return statment
--2nd get all the theme configs inside their own config files.Making sure to require those files here.
--
--
--TODO: I have a large list of themes that can go inside 
--
return {
  -- { "lunarvim/synthwave84.nvim", },
  -- {  "ellisonleao/gruvbox.nvim", },
  -- { "rose-pine/neovim",
  --   name = "rose-pine",},
  -- { "ray-x/aurora", },
  -- {  "catppuccin/nvim",
  --   name = "catppuccin",},
  -- { "rebelot/kanagawa.nvim",},
  -- { "projekt0n/github-nvim-theme", },
  --     tag = "v0.0.7",
  --     branch = "0.0.x",
  -- { "Shatur/neovim-ayu", },
  -- { "catppuccin/nvim",
  --   name = "catppuccin",
  -- },
  -- Check here for referances
  -- "https://github.com/metalelf0/dot-files/blob/master/.config/nvim/lua/user/plugins/colorschemes/jellybeans.lua"
  --
  --
  -- { "RRethy/nvim-base16",},
  -- { "rockerBOO/boo-colorscheme-nvim", },
  { "metalelf0/jellybeans-nvim", },
  -- { },
{
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    init = function()
        require("colorbuddy").colorscheme("cobalt2")
    end,
    vim.cmd("colorscheme cobalt2"),
},


  --FIXME:Not sure about this autocomand yet
  keys = {
      "<Leader>uu",
      function()
          vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
          require("telescope.builtin").colorscheme()
      end,
      noremap = true,
  },
}--end
