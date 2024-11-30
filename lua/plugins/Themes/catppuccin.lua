if true then
  return{}
end

--NOTE: I think this is what an individual config file for a colorscheme will look like.
--
--[[ Catppuccin theme for neovim ]]
--Author: JJH
--Date: Jan 23, 2024
--Edit: Trying to get this theme to show up in the picker So I made it a file of it's own.
--
--NOTE: This is installed by default with LazyVim
--
return {

    {
    "catppuccin/nvim",
    opts = {
      name = "catppuccin",
      vim.cmd.colorscheme("catppuccin"),
    },
        -- name = "catppuccin",
        -- priority = 1000,
        -- event = "User ColorSchemeLoad",

    },
 -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    -- {
    --   "LazyVim/LazyVim",
    --   opts = {
    --     colorscheme = "catppuccin",
    --   },
    -- },
    -- vim.cmd.colorscheme("catppuccin-mocha"),
    -- vim.cmd("colorscheme catppuccin"),
}
