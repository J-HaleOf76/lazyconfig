if true then
  return {}
end

-- From the readme page. GitHub example

return { "folke/snacks.nvim",
  opts = {
    dashboard = {
      width = 5,
      pane_gap = 4,

      autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", -- autokey sequence
      preset = {

        header = table.concat({
            [[   █  █   ]],
            [[   █ ██   ]],
            [[   ████   ]],
            [[   ██ ███   ]],
            [[   █  █   ]],
            [[             ]],
            [[ n e o v i m ]],
        }, '\n'),
      },
formats = {
          header = {
            align = "left",
          },
        },
        sections = {
          {
            section = "header",
            padding = 2,
          },
      },
{
  sections = {
    { section = "header" },
    {
      pane = 2,
      section = "terminal",
      cmd = "colorscript -e square",
      height = 5,
      padding = 1,
    },
    { section = "keys", gap = 1, padding = 1 },
    function()
      local in_git = Snacks.git.get_root() ~= nil
      local cmds = {
        {
          title = "Notifications",
          cmd = "gh notify -s -a -n5",
          icon = " ",
          height = 5,
          enabled = true,
        },
        {
          title = "Open Issues",
          cmd = "gh issue list -L 3",
          icon = " ",
          height = 7,
        },
        {
          icon = " ",
          title = "Open PRs",
          cmd = "gh pr list -L 3",
          height = 7,
        },
        {
          icon = " ",
          title = "Git Status",
          cmd = "hub --no-pager diff --stat -B -M -C",
          height = 10,
        },
      }
      return vim.tbl_map(function(cmd)
        return vim.tbl_extend("force", {
          pane = 2,
          section = "terminal",
          enabled = in_git,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        }, cmd)
      end, cmds)
    end,
          -- Adjust for home.
 { section = "terminal", cmd = "curl -s 'wttr.in/?0'"},
    { section = "startup" },
  },
},
    },
  },
}
