--[[ 
--This might be from the Extras
--NOTE: check where this got installed from
--
--FIX: Don't think that this is setup.
-- Make this usable
-- filetypes, config,commands,event,
--]]

return{
    {
      'barrett-ruth/live-server.nvim',
      lazy = true,
      build = "yarn global add live-server",
      event = "VeryLazy",
      config = true,
    },
}
