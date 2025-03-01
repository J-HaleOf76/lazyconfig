-- 2 of 3 files needed for this to work. themer,config,colorscheme.
--
--TODO: Make a wallust theme and save.
--
  -- Rose-Pine Kanagawa Tokyo-Dark-Terminal TokyoNight-Night
-- NeoPywal has several theme builtin and more that it can apply in the config.
--
--

--Set the main theme here
return {
  -- colorscheme = "tokyodark",
  colorscheme = "tokyo-dark-terminal",
  -- colorscheme = "base16-tokyodark",
  -- colorscheme = "tokyonight-night",
   -- colorscheme = "base16-3024",
  -- colorscheme = "tokyonight",
  -- colorscheme = "rose-pine",
  -- variant = "main",
    -- colorscheme = "catppuccin",
    -- variant = "mocha",
  -- colorscheme = "kanagawa",
  -- variant = "dragon",

  --
  -- NeoPywal has other builtin themes
  -- colorscheme = "neopywal",
  -- variant = "dark",
  --
  variant = "dark",
	transparent = false,
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

