--[[
NeoVim Glow Configuration

NOTE: Glow has a global config file in .config/glow
- Glow also can be themed with a json file. alias='glow -s dracula.json' ? I think.
* Might need installed through LazyVim Extras - Glow and glow.nvim

]]--

return {


  -- Glow in a flowting window.
  { "ellisonleao/glow.nvim",
    config = true,
    -- { "glow.nvim",
    -- dir = "~/Dev_NeoVim/glow.nvim",
    -- dev = true,
    event = "VeryLazy",
    lazy = true,
    -- config = function ()
    --   require("glow").setup({
    --   PATHS might need fixed 3-12-2024
        opts = {
        glow_path = "~/.local/bin/", -- will be filled automatically with your glow bin in $PATH, if any
        install_path = "~/.local/bin", -- default path for installing glow binary
        border = "shadow", -- floating window border config
        style = "dark", -- filled automatically with your current editor background, you can override using glow json style
        pager = false,
        width = 80,
        height = 100,
        width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
        height_ratio = 0.7,
        },
    --   })
    -- end,
    cmd = "Glow", "glow" },
}
