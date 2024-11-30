-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--   _       _ _     _
--  (_)_ __ (_) |_  | |_   _  __ _
--  | | '_ \| | __| | | | | |/ _` |
--  | | | | | | |_ _| | |_| | (_| |
--  |_|_| |_|_|\__(_)_|\__,_|\__,_|

-- require('core')
-- require('lsp')

-- VSCode only settings
if vim.g.vscode then
  require('vscode')
end
