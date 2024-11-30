--[[
--Author: John Hale
 Date: Nov 11,2023



## This will open an image from neotree files and display it with wezterm
## Keymap set in neotree. leader p

-- TODO: Check for options. size, positions,etc

]]--

-- return{
-- 'image_preview.nvim',
--     event = 'VeryLazy',
--     dir = "~/Dev_NeoVim/wezterm_image/image_preview.nvim-main",
--     dev = true,
--     config = function()
--         require("image_preview").setup()
--     end
--
--
-- }
return{
{
    'https://github.com/adelarsq/image_preview.nvim',
    event = 'VeryLazy',
    config = function()
        require("image_preview").setup()
    end
},
}
