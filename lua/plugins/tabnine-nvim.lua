if true then
  return{}
end

--[[
--NOTE: This isn't needed I have cmp-tabnine for this
--Dec 6,2023 - Don't delete yet

  Author: JohnHale
  Date: Oct 1, 2023
  Tabnine-nvim 

TODO: make this a local "dev" plugin with lazy. The files should be in "./local/share/nvim/"
 Leave this bee for now. I have the cmp plugin.

]]

-- return {
--
--   {
--     "codota/tabnine-nvim",
--     -- event = "nvim-cmp",
--     event = "VeryLazy",
--
--     build = "./dl_binaries.sh",
--
--     config = function()
--       require("tabnine").setup({
--         disable_auto_comment = true,
--         -- accept_keymap = "<Tab>",
--         accept_keymap = "<CR>",
--         -- dismiss_keymap = "<C-]>",
--         dismiss_keymap = "<C-e>",
--         debounce_ms = 800,
--         suggestion_color = { gui = "#808080", cterm = 244 },
--         exclude_filetypes = { "TelescopePrompt", "neo-tree" },
--         log_file_path = nil, -- absolute path to Tabnine log file
--       })
--     end,
--   },
--
-- }
