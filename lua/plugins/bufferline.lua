if true then
  return {}
end
-- Author: JJH
-- Date: April 26,2024
-- Commenting out for now
--
-- Yep changing this to tabs opens 1 tab at a time. This can probably be fixed through neotree.

-- I want to always show the bufferline
-- FIXED: Feb 18, 2024
--
return {
{
  "akinsho/bufferline.nvim",
  -- version = "v3.*",
  -- dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
     options = {
        always_show_bufferline = true,
        separator_style = "slant",
        -- mode = "tabs",
        offsets = {
           {
              filetype = "neo-tree",
              text = " File Explorer",
              highlight = "Directory",
              separator = false,
           },
        },
     },
  },
}
}
