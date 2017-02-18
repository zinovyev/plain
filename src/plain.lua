---------------------------------------------------------------------------
-- @author Ivan Zinovyev <vanyazin@gmail.com>
-- @copyright 2017 Ivan Zinovyev 
-- @release 1.0.0
---------------------------------------------------------------------------

pcall(function() local wibox = require('wibox') end)

return {
  widget = {
    battery = function()
      Battery = require('plain.widgets.battery')
      Battery:set_proto { wibox = wibox }
      battery = Battery:new()

      return battery
    end,
  }
}
