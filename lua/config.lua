--[[ This is where I set the colorscheme ]]--
--TODO: Make a wallust theme and save.
--
-- NeoPywal has several theme builtin and more that it can apply in the config.
--
--

--Set the main theme here
return {
  -- colorscheme = "tokyodark",
  -- colorscheme = "tokyo-dark-terminal",
  -- colorscheme = "base16-tokyodark",
  -- colorscheme = "tokyonight-night",
   -- colorscheme = "base16-3024",
  -- colorscheme = "tokyonight",
  -- colorscheme = "rose-pine",
  -- variant = "main",
    colorscheme = "catppuccin",
    variant = "mocha",
  -- colorscheme = "kanagawa",
  -- variant = "dragon",
  -- TODO: SAVE SOME OF THESE PYWAL & WALLUST THEMES To be used with the rest of WALLUST OR PYWAL
  -- Rose-Pine Kanagawa Tokyo-Dark-Terminal TokyoNight-Night
  --
  -- NeoPywal has other builtin themes
  -- colorscheme = "neopywal",
  -- variant = "dark",
  --
  -- variant = "dark",
	transparent = false,
  --[[TODO: Where do these other calls come from? ]]--
  --
	-- filemanager = "neo-tree", -- supported: mini.files, oil, neo-tree
	-- keymapper = "which-key", -- supported: mini.clue, which-key
	-- journal_dir = os.getenv("HOME") .. "/MEGASync/NOTES/dailies/",
	notes = os.getenv("HOME") .. "/MEGASync/NOTES/dailies/",
	-- startup = {
	-- 	show_diagnostics = true,
	-- 	show_git_blame = false,
	-- },
	-- integrations = {
	-- 	notes = {
	-- 		enabled = true,
	-- 	},
	-- },
}

