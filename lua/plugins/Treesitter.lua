--Author: JJH
--Date: March 29, 2024
--
--[[ Add modules to treesitter here. ]]
-- TSInstall
return {
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     -- add tsx and treesitter
  --     vim.list_extend(opts.ensure_installed, {
  --       "help",
  --       "regex",
  --       "json",
  --       "tsx",
  --       "yaml",
  --       "vim",
  --       "query",
  --       "bash",
  --       "html",
  --       "css",
  --       "javascript",
  --       "typescript",
  --       "markdown",
  --       "markdown_inline",
  --       "python",
  --       "lua",
  --
  --     })
  --   end,
  -- },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "help",
        "markdown",
        "markdown_inline",
        "python",
        "lua",
        "bash",
        "css",
        "html",
        "javascript",
        "query",
        "vim",
        "regex",

      })

    end,
  },

}
