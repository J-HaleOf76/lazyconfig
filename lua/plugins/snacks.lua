-- if true then
--   return {}
-- end
-- # Snacks main file
-- Author: JJH
--   Date: Feb 20,2025
--   Edits: Starting a setup file for Snacks Dashboard
--   github, advanced, files, compact_files, chafa, pokemon, startify, doom
---
-- enabled = function()
--   return Snacks.git.get_root() ~= nil
-- end,

return {
  "folke/snacks.nvim",
  -- priority = 1000,
  -- lazy = false,
  opts = {
    -- bigfile = { enabled = true },
    dashboard = { enabled = true,
      example = "advanced",

    },
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
  },
}

