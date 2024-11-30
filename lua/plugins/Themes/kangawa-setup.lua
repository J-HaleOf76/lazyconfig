--I found lots of jems here
--' https://github.com/rebelot/dotfiles/blob/master/nvim/lua/plugins.lua'
--Kanagawa setup call
--
--Most of the themes need something simalar to this setup call.
--
    -------------------------------------------
    -- Colors, Icons, StatusLine, BufferLine --
    -------------------------------------------

return {
    {
        "rebelot/kanagawa.nvim",
        dev = true,
        enabled = true,
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.o.background = nil
            vim.cmd("set bg=")
            vim.o.cmdheight = 0
            vim.o.pumblend = 10
            require("kanagawa").setup({
                compile = true,
                dimInactive = false,
                -- transparent = true,
                background = { light = "lotus", dark = "dragon" },
                overrides = function(colors)
                    local theme = colors.theme
                    return {
            --             TelescopeTitle = { fg = theme.ui.special, bold = true },
            --             TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            --             TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            --             TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            --             TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            --             TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            --             TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
            --             NormalFloat = { bg = "none" },
            --             FloatTitle = { bg = "none" },
            --             FloatBorder = { bg = "none" },
            --             LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            --             MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend },
                        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                        PmenuSbar = { bg = theme.ui.bg_m1 },
                        PmenuThumb = { bg = theme.ui.bg_p2 },
                        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
                        SpellBad = { undercurl = true, underline = false, sp = colors.palette.oldWhite },
                        LspInlayHint = { fg = theme.ui.special },
                    }
                end,
            })
            vim.cmd("colorscheme kanagawa")
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "kanagawa",
                callback = function()
                    if vim.o.background == "light" then
                        vim.fn.system("kitty +kitten themes Kanagawa_light")
                    elseif vim.o.background == "dark" then
                        vim.fn.system("kitty +kitten themes Kanagawa_dragon")
                      vim.fn.system("wezterm.config.colorscheme = Kanagawa_dragon")
                    else
                        vim.fn.system("kitty +kitten themes Kanagawa")
                    end
                end,
            })
        end,
    },
}
