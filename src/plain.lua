---------------------------------------------------------------------------
-- @author Ivan Zinovyev <vanyazin@gmail.com>
-- @copyright 2017 Ivan Zinovyev 
-- @release 1.0.0
---------------------------------------------------------------------------

pcall(function() wibox = require('wibox') end)

Widget = require 'widgets.widget'
Widget.__proto { wibox = wibox }

return {
  widget = {
    battery = function()
      Battery = require('widgets.battery')
      return Battery:new()
    end,
    brightness = function()
      Brightness = require('widgets.brightness')
      return Brightness:new() 
    end,
    volume = function()
      Volume = require('widgets.volume')
      return Volume:new()
    end,
    separator = function(value)
      Separator = require('widgets.separator')
      return Separator:new(value)
    end,
  }
}
