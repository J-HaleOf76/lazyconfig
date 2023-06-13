return {
  -- This should be OK this way.Plugin - config.funct 'req plugin setup()'
  -- require("lazy").setup({
  -- {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  -- },
  -- }),
  config = function()
    require("tabnine").setup({
      disable_auto_comment = true,
      accept_keymap = "<Tab>",
      dismiss_keymap = "<C-]>",
      debounce_ms = 800,
      suggestion_color = { gui = "#808080", cterm = 244 },
      exclude_filetypes = { "TelescopePrompt" },
      log_file_path = nil, -- absolute path to Tabnine log file
    })
  end,
}
