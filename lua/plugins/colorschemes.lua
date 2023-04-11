-- I want to put all extra colorschemes in here if i can.
return {
  { "lunarvim/synthwave84.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "synthwave84",
    },
  },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  --Adding aurora
  { "ray-x/aurora" },
  -- Configure LazyVim to load Aurora colorscheme
  { "LazyVim/LazyVim", opts = { colorscheme = "aurora" } },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup()
      vim.cmd("colorscheme rose-pine")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  { "J-HaleOf76/neovim-ayu" }, -- ayu-dark
  { "LazyVim/LazyVim", opts = {
    colorscheme = "ayu",
  } },
  {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.7",
    -- or                            branch = '0.0.x'
    config = function()
      require("github-theme").setup({
        theme_style = "dark",
      })
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "github_dark" } },
}
