-- Author: JJH
-- Date: Feb 19, 2024
--
--          +---------------------------------------------------------+
--          |       Add comment boxes or lines inside of files.       |
--          +---------------------------------------------------------+
return {
{ "LudoPinelli/comment-box.nvim", },

--

-- Comment box

-- local wk = require("which-key")
--
-- wk.register({
--   ["<Leader>"] = {
--     C = {
--       name = " □  Boxes",
--       b = { "<Cmd>CBccbox<CR>", "Box Title" },
--       b = { "<Cmd>CBccbox10<CR>", "ASCII Box Title" },
--       t = { "<Cmd>CBllline<CR>", "Titled Line" },
--       t = { "<Cmd>CBlcline17<CR>", "Titled C Line" },
--       l = { "<Cmd>CBline<CR>", "Simple Line" },
--       m = { "<Cmd>CBllbox19<CR>", "Marked Sides" },
--       d = { "<Cmd>CBd<CR>", "Remove a box" },
--     },
--   },
-- })
  --
  -- Suggested Spec:
  -- {
  --   { "<Leader>C", group = " □ Boxes" },
  --   { "<Leader>CB", "<Cmd>CBccbox10<CR>", desc = "ASCII Box Title" },
  --   { "<Leader>CT", "<Cmd>CBlcline17<CR>", desc = "Titled C Line" },
  --   { "<Leader>Cb", "<Cmd>CBccbox<CR>", desc = "Box Title" },
  --   { "<Leader>Cd", "<Cmd>CBd<CR>", desc = "Remove a box" },
  --   { "<Leader>Cl", "<Cmd>CBline<CR>", desc = "Simple Line" },
  --   { "<Leader>Cm", "<Cmd>CBllbox14<CR>", desc = "Marked" },
  --   { "<Leader>Ct", "<Cmd>CBllline<CR>", desc = "Titled Line" },
  -- }

}
