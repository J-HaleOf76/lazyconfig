<!-- Save this just cuz -->

# I want the config to have a colorscheme module

- I want to give the colorschemes a keymap or an event and then have an autocomand call that event while loading the colorscheme picker.

<!-- event = "ColorSchemeLoad" -->

```lua
{
 "<leader>uu",
 function()
  vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
  require("telescope.builtin").colorscheme()
end,
noremap = true,
}
```

The above might be in a keys = {} at the bottom of the file.
