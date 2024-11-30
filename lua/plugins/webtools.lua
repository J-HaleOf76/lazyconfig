return{
  { "ray-x/web-tools.nvim",
    event = "VeryLazy",
    opts = {
      keymaps = {
        rename = nil, -- by default use same setup as lspconfig
        repeat_rename = '.', -- to repeat
      },
        hurl = { -- hurl default
          show_headers = false, -- do not show http headers
          floating = false, -- needs guihua.lua
          formaatters = { -- format the results by filetype
            json = { 'jq' },
            html = { 'prettier', '--parse','html', },
          },
        },

},
},
}
-- Browsersync args
