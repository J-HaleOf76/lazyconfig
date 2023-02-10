require("browse").setup({
  -- search provider you want to use
  provider = "brave", -- duckduckgo, bing, google

  -- either pass it here or just pass the table to the functions
  -- see below for more
  -- bookmarks = {},
})
local bookmarks =
  {
    "https://github.com/hoob3rt/lualine.nvim",
    "https://github.com/neovim/neovim",
    "https://neovim.discourse.group/",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/rockerBOO/awesome-neovim",
  }, 
vim.keymap.set("n", "<leader>B", function()
    require("browse").browse({ bookmarks = bookmarks })
  end)
