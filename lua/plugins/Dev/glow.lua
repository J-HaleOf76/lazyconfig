--[[
Glow Configuration

NOTE: This might be working as a local plugin with out lazyvim
For whatever reason this is working
Glow has a global config file in .config/glow

]]
-- This should nullify this file.
-- if true then return {} end

return {


  -- Glow in a flowting window.
  -- { "ellisonleao/glow.nvim",
    -- config = true,
    { "glow.nvim",
    dir = "~/Dev_NeoVim/glow.nvim",
    dev = true,
    event = "VeryLazy",
    lazy = true,
    -- config = function ()
    --   require("glow").setup({
        opts = {
        glow_path = "~/.local/bin/",
        install_path = "~/.local/bin/",
        style = "dark",
        border = "shadow",
        },
    --   })
    -- end,
    cmd = "Glow" },
}
