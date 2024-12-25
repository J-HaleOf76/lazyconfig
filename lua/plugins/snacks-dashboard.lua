-- Author: JJH
-- Date: Nov 27,2024
-- Edits: New DashBoard Configuration
-- This is the new snacks dashboard config
-- Dual pane
--
--FIXME: This should be working 11-27-2024
--Just copy the others over into new files and turn them OFF & ON
--
--
-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,
--



return {"folke/snacks.nvim",
  opts = {
dashboard = {
  sections = {
    { section = "header" },
    {
      pane = 2,
      section = "terminal",
      cmd = "colorscript -e square",
      height = 5,
      padding = 1,
    },
    { section = "keys", gap = 1, padding = 1 },
    { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
    { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
    {
      pane = 2,
      icon = " ",
      title = "Git Status",
      section = "terminal",
      enabled = vim.fn.isdirectory(".git") == 1,
      cmd = "hub status --short --branch --renames",
      height = 5,
      padding = 1,
      ttl = 5 * 60,
      indent = 3,
    },
    { section = "startup" },
  },
      { cmd="dash"},
}, -- dash end
  }, -- opts end
  }-- END

