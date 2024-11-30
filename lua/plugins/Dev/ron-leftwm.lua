--[[ 
--
Author: JohnHale
Date: Oct 9, 2023
Plugin: ron-rs for LeftWM themes

-- These files can be dragged and dropped into the folders by hand.

--]]

return {

  { "ron-rs/ron.vim",
    dir = "~/Dev_NeoVim/ron.vim",
    dev = true,
    lazy = true,
    event = "VeryLazy",
    filetypes = { ".ron" },
  },

}
