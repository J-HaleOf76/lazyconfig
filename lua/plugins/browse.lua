return {

  {
    "lalitmee/browse.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },

    --require("browse").setup({
    -- search provider you want to use
    provider = "brave", -- duckduckgo, bing, google
    cmd = {
      "Browse",
      "BrowseBookmarks",
      "BrowseInputSearch",
      "BrowseDevdocsSearch",
      "BrowseDevdocsFiletypeSearch",
      "BrowseMdnSearch",
    },
    keys = { "n", "<leader>B", desc = "Browse the web" },

    -- either pass it here or just pass the table to the functions
    -- see below for more
    -- bookmarks = {},

    bookmarks = {
      "https://github.com/hoob3rt/lualine.nvim",
      "https://github.com/neovim/neovim",
      "https://neovim.discourse.group/",
      "https://github.com/nvim-telescope/telescope.nvim",
      "https://github.com/rockerBOO/awesome-neovim",

      ["docs"] = {
        ["name"] = "docs for everything",
        ["mdn"] = "https://developer.mozilla.org/search?q=%s",
        ["devdocs.io"] = "https://devdocs.io/search?q=%s",
        ["learnxinyminutes"] = "https://learnxinyminutes.com/docs/%s",
      },
      ["work"] = {
        ["name"] = "work related",
        ["github_pulls"] = "https://github.com/pulls",
        ["mui"] = "https://mui.com/",
        ["mui-icons"] = "https://mui.com/components/material-icons/#material-icons",
        ["v4-mui"] = "https://v4.mui.com/",
        ["npm_search"] = "https://npmjs.com/search?q=%s",
        ["store-client"] = "https://github.com/koinearth/ngagen-store-client-webapp-service",
        ["marketsn-vdp"] = "https://github.com/koinearth/marketsn-vdp-webapp",
      },
      ["lalitmee"] = {
        ["name"] = "personal repositories",
        ["browse.nvim"] = "https://github.com/lalitmee/browse.nvim",
        ["cobalt2.nvim"] = "https://github.com/lalitmee/cobalt2.nvim",
        ["dNotes"] = "https://github.com/lalitmee/dNotes",
        ["dotfiles"] = "https://github.com/lalitmee/dotfiles",
      },
      ["neovim"] = {
        ["name"] = "most visited repositories for neovim",
        ["awesome-neovim"] = "https://github.com/rockerBOO/awesome-neovim",
        ["lualine"] = "https://github.com/nvim-lualine/lualine.nvim",
        ["neovim"] = "https://github.com/neovim/neovim",
        ["nvim-treesitter"] = "https://github.com/nvim-treesitter/nvim-treesitter",
        ["telescope"] = "https://github.com/nvim-telescope/telescope.nvim",
      },
      ["configs"] = {
        ["name"] = "dotfiles repositories of my favourites",
        ["ThePrimeagen"] = "https://github.com/ThePrimeagen/.dotfiles",
        ["akinsho"] = "https://github.com/akinsho/dotfiles",
        ["tjdevries"] = "https://github.com/tjdevries/config_manager",
        ["whatsthatsmell"] = "https://github.com/whatsthatsmell/dots",
      },
      ["github"] = {
        ["name"] = "search github from neovim",
        ["code_search"] = "https://github.com/search?q=%s&amp;type=code",
        ["repo_search"] = "https://github.com/search?q=%s&amp;type=repositories",
        ["issues_search"] = "https://github.com/search?q=%s&amp;type=issues",
        ["pulls_search"] = "https://github.com/search?q=%s&amp;type=pullrequests",
      },
      ["reddit"] = {
        ["name"] = "reddit search",
        ["query"] = "https://www.reddit.com/search?q=%s",
        ["sr_query"] = "https://www.reddit.com/search?q=%s&amp;type=sr",
        ["neovim"] = "https://www.reddit.com/r/neovim",
        ["workspaces"] = "https://www.reddit.com/r/workspaces",
        ["vim_porn"] = "https://www.reddit.com/r/vimporn",
      },
    },
    -- )},

    -- vim.keymap.set("n", "<leader>B",function()
    --     require("browse").browse({ bookmarks = bookmarks })
    --   end)
  },
}
