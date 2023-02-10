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
}
