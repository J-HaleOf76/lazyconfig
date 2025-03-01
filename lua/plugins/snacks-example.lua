if true then
  return {}
end
-- Author: JJH
-- Date: Nov 27,2024
-- Edit: I want to use Snacks for the dashboard
--
-- This is the way to use the preconfigured examples
-- { "snacks.nvim",
--    opts = {dashboard = { example = "github" },
-- }
--
-- 
-- Save this enable function
-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,
--  header = table.concat({
        --   [[   █  █   ]],
        --   [[   █ ██   ]],
        --   [[   ████   ]],
        --   [[   ██ ███   ]],
        --   [[   █  █   ]],
        --   [[             ]],
        --   [[ n e o v i m ]],
        -- }, '\n'),
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
