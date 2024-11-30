if true then
  return {}
end
-- Name: JJH
-- Date: Feb 2024
-- This is working
-- NOTE: I think this is ascii text file
--
-- TODO: I might be able to make 1 file with a few of these inside like.
-- logo = LogoFile.nvim - LogoFile.LunarVim - LogoFile.NeoVim
-- local logo = nvim-logo
--
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
	  [                       ][                       ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    -- return opts
  end,
}
