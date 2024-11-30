if true then
  return {}
end
--
-- Author: JJH
-- Date: Nov 27,2024
-- Edit: I want to use Snacks for the dashboard
--
-- This I found on github
--   Just an example of how to get it to use a dashboard
-- 
-- Save this enable function
-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,
--
return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      --       preset = {
      --         header = [[
      -- ██████╗  ██████╗     ██╗████████╗
      -- ██╔══██╗██╔═══██╗    ██║╚══██╔══╝
      -- ██║  ██║██║   ██║    ██║   ██║
      -- ██║  ██║██║   ██║    ██║   ██║
      -- ██████╔╝╚██████╔╝    ██║   ██║
      -- ╚═════╝  ╚═════╝     ╚═╝   ╚═╝
      --
      --         ]],
      --       },
      sections = {
        { section = "header", padding = 1 },
        { section = "keys", gap = 1, padding = 1 },
        {
          section = "terminal",
          icon = " ",
          title = "Git Status",
          enabled = vim.fn.isdirectory(".git") == 1,
          cmd = "hub status --short --branch --renames",
          height = 5,
          padding = 1,
          indent = 3,
        },
        { section = "startup" },
      },
    },
  },
}
