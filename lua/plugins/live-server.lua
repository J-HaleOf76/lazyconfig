--[[ 
--This might be from the Extras
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
