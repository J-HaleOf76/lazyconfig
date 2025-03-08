--[[ This is where I set the colorscheme ]]--
-- 2 of 3 files needed for this to work. themer,config,colorscheme.

--TODO: Make a wallust theme and save.
  -- Rose-Pine Kanagawa Tokyo-Dark-Terminal TokyoNight-Night
--
-- NeoPywal has several theme builtin and more that it can apply in the config.
--
--

--Set the main theme here
return {
  -- colorscheme = "base16-tokyodark",
  -- colorscheme = "base16-tokyodark-terminal",
  --
  colorscheme = "tokyo-dark-terminal",
  -- colorscheme = "base16-tokyo-night-dark",
  --
  -- colorscheme = "base16-tokyodark",
  -- colorscheme = "tokyonight-night",
   -- colorscheme = "base16-3024",
  -- colorscheme = "tokyonight",
  --  colorscheme = "~/john/Projects/tokyonight.nvim/extras/tokyonight_night",
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
  -- fm = "yazi",
	notes_dir = os.getenv("HOME") .. "/MEGASync/NOTES/dailies/",
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

