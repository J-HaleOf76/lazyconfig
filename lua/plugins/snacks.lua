if true then
  return {}
end
-- # Snacks main file
-- Author: JJH
--   Date: March 8,2025
--   Edits: Starting a setup file for Snacks Dashboard
--   github, advanced, files, compact_files, chafa, pokemon, startify, doom
---
-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- bigfile = { enabled = true },
    -- dashboard = {
    --   enabled = true,
    --   example = "advanced",
    -- width = 80,
    --   row = nil, -- dashboard position. nil for center
    --   col = nil, -- dashboard position. nil for center
    --   pane_gap = 4, -- empty columns between vertical panes
    --   autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", -- autokey sequence
      -- These settings are used by some built-in sections
      --

      -- preset = {
      --
      --   header = table.concat({
      --       [[   █  █   ]],
      --       [[   █ ██   ]],
      --       [[   ████   ]],
      --       [[   ██ ███   ]],
      --       [[   █  █   ]],
      --       [[             ]],
      --       [[ n e o v i m ]],
      --   }, '\n'),
      -- },
-- formats = {
--           header = {
--             align = "left",
--           },
--         },
--         sections = {
--           {
--             section = "header",
--             padding = 2,
--           },
--       },
-- {
--   sections = {
--     { section = "header" },
--     {
--       pane = 2,
--       section = "terminal",
--       cmd = "colorscript -e square",
--       height = 5,
--       padding = 1,
--     },
--     { section = "keys", gap = 1, padding = 1 },
--     function()
--       local in_git = Snacks.git.get_root() ~= nil
--       local cmds = {
--         {
--           title = "Notifications",
--           cmd = "gh notify -s -a -n5",
--           icon = " ",
--           height = 5,
--           enabled = true,
--         },
--         {
--           title = "Open Issues",
--           cmd = "gh issue list -L 3",
--           icon = " ",
--           height = 7,
--         },
--         {
--           icon = " ",
--           title = "Open PRs",
--           cmd = "gh pr list -L 3",
--           height = 7,
--         },
--         {
--           icon = " ",
--           title = "Git Status",
--           cmd = "hub --no-pager diff --stat -B -M -C",
--           height = 10,
--         },
--       }
--       return vim.tbl_map(function(cmd)
--         return vim.tbl_extend("force", {
--           pane = 2,
--           section = "terminal",
--           enabled = in_git,
--           padding = 1,
--           ttl = 5 * 60,
--           indent = 3,
--         }, cmd)
--       end, cmds)
--     end,
--           -- Adjust for home.
--  { section = "terminal", cmd = "curl -s 'wttr.in/?0'"},
--     { section = "startup" },
--   },
-- },--dashboard

    -- },
    image = { enabled = true,
    img_dirs = { "Pictures", "Walpapers", "notes", "img", "images", "assets", "static", "public", "media", "attachments" },
      -- env = { SNACKS_GHOSTTY=true },

    },--image
    -- notifier = {
    --   enabled = true,
    --   timeout = 3000,
    -- },
    -- quickfile = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
    -- styles = {
    --   notification = {
    --     wo = { wrap = true } -- Wrap notifications
    --   }
    -- }
  }, --opts
} --return

