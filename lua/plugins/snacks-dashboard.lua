if true then return{} end
--
-- Author: JJH
-- Date: Feb 20,2024
-- Edits: New DashBoard Configuration
-- This is the new snacks dashboard config
-- Dual pane
--
--TODO: add the weather at the bottom or besides the new header.
--Test Test Test
--
--
--FIX: This wont work... width pane_gap ... 


-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,
--



return {"folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
dashboard = {
 -- section = {
  width = 5,
  pane_gap = 2,

preset = {
        header = table.concat({
            [[   █  █   ]],
            [[   █ ██   ]],
            [[   ████   ]],
            [[   ██ ███   ]],
            [[   █  █   ]],
            [[             ]],
            [[ n e o v i m ]],
        }, '\n'),



--},
},
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
      width = 4,
      padding = 1,
      ttl = 5 * 60,
      indent = 3,
    },
    { section = "startup" },
  },
      { cmd = "dash"},
}, -- dash end
  }, -- opts end
  }-- END

