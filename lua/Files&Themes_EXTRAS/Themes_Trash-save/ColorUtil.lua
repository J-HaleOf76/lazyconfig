---@diagnostic disable: redundant-parameter
if true then
  return{}
end
-- # ColorSchemes_Configuration_Module

--[[
-- Author: JJH
-- Date:   Jan 28, 2024
-- Edits: Rename this to ColorUtil.lua
--
--NOTE: This should keep track of all of the colorschemes and only load the 1 thats being used.
-- Keep good notes
--
--FIX: This file is just sitting here as is.
-- Useless without a color file to compare to 
-- what is M.keys() ?  What is the keys refering to
-- " color " I think is a global command for colorscheme
-- " "
--
--]]


-- # Prevent builtin colorschemes from being shown in picker
-- CoreUtils.lua
--
local M = {}
 -- stylua: ignore
function M.keys()
  -- stylua: ignore
  local builtins = { "zellner", "torte", "slate", "shine", "ron", "quiet", "peachpuff",
  "pablo", "murphy", "evening", "elflord",
  "desert", "delek", "blue" }
  --Saved "vim" "koehler" "default" "darkblue" "" "lunaperche", "koehler", "industry",

  return {
    {
      -- Changing to the stock keys uC
      "<leader>uU",
      function() -- prevent builtin colors from being displayed in the picker
        local target = vim.fn.getcompletion

        ---@diagnostic disable-next-line: duplicate-set-field
        vim.fn.getcompletion = function()
          return vim.tbl_filter(function(color)
            return not vim.tbl_contains(builtins, color)
          end, target("", "color"))
        end

        require("lazyvim.util").telescope("colorscheme", { enable_preview = true })()
        vim.fn.getcompletion = target
      end,
      desc = "Colorscheme with preview",
    },
  }
end

return M
