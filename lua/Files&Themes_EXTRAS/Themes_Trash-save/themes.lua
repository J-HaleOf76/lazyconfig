if true then
  return {}
end
--[[
--FIX: THIS IS NOT NEEDED
--Author: JJH
--Date: Aug 3, 2024
-- I made them into their own colors files.
--Module: LazyVim Themes Setup
--
--
--]]--

--
--TODO: I have a large list of themes that can go inside 
-- These should be added to the theme module.
--
return {
--   { "lunarvim/synthwave84.nvim",
--     -- event = "ColorSchemePre",
--     event = "VeryLazy",
--
--   config = true,
--     -- vim.cmd("colorscheme = synthwave84"),
--       -- { "LazyVim/LazyVim", opts = { colorscheme = "synthwave84" },},
-- },
--   {  "ellisonleao/gruvbox.nvim",
--           dev = true,

-- },
--   { "ray-x/aurora",
--         -- event = "ColorSchemePre",
--         event = "VeryLazy",
--         -- config = true,
--         -- { "LazyVim/LazyVim", opts = { colorscheme = "aurora" } },
--         -- vim.cmd.colorscheme("aurora"),
-- },
  -- {  "catppuccin/nvim",
  --   name = "catppuccin",},
  -- { "rebelot/kanagawa.nvim",},
  -- { "projekt0n/github-nvim-theme", },
  --     tag = "v0.0.7",
  --     branch = "0.0.x",
  -- { "Shatur/neovim-ayu", },
  -- },
  -- Check here for referances
  -- "https://github.com/metalelf0/dot-files/blob/master/.config/nvim/lua/user/plugins/colorschemes/jellybeans.lua"
  --
  --
  -- { "RRethy/nvim-base16",},
  -- { "rockerBOO/boo-colorscheme-nvim", },
  -- { "metalelf0/jellybeans-nvim", },
  -- { },
-- {
--     "lalitmee/cobalt2.nvim",
--     -- event = { "ColorSchemePre" }, -- if you want to lazy load
--     lazy = false,
--     priority = 1000,
--     dependencies = { "tjdevries/colorbuddy.nvim" },
--     init = function()
--         require("colorbuddy").colorscheme("cobalt2")
--     end,
--     vim.cmd("colorscheme cobalt2"),
-- },


  --FIXME:Not sure about this autocomand yet
  --
  -- keys = {
  --     "<Leader>uu",
  --     function()
  --         vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
  --         require("telescope.builtin").colorscheme()
  --     end,
  --     noremap = true,
  -- },
}--end
