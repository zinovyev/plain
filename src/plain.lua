---------------------------------------------------------------------------
-- @author Ivan Zinovyev <vanyazin@gmail.com>
-- @copyright 2017 Ivan Zinovyev 
-- @release 1.0.0
---------------------------------------------------------------------------

pcall(function() wibox = require('wibox') end)

return {
  widget = {
    battery = function()
      Battery = require('plain.widgets.battery')
      Battery:set_proto { wibox = wibox }
      battery = Battery:new()

      return battery
    end,
    brightness = function()
      Brightness = require('plain.widgets.brightness')
      Brightness:set_proto { wibox = wibox }
      brightness = Brightness:new()

      return brightness 
    end,
    volume = function()
      Volume = require('plain.widgets.volume')
      Volume:set_proto { wibox = wibox }
      volume = Volume:new()

      return volume
    end,
    separator = function(value)
      Separator = require('plain.widgets.separator')
      Separator:set_proto { wibox = wibox }
      separator = Separator:new(value) 

      return separator
    end,
  }
}
