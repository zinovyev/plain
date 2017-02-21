---------------------------------------------------------------------------
-- @author Ivan Zinovyev <vanyazin@gmail.com>
-- @copyright 2017 Ivan Zinovyev 
-- @release 1.0.0
---------------------------------------------------------------------------

local Widget = require('plain.widgets.widget')

--- Brightness widget.
-- plain.widget.battery
local Brightness = {}
setmetatable(Brightness, { __index = Widget })

--- Init base values and actions.
-- @return A widget instance.
function Brightness:init()
  self:start_timer(5, function()
    self:refresh()
    self:redraw()
  end)
end

--- Refresh battery status.
function Brightness:refresh()
  local fh = io.popen("xbacklight -get | awk '{print \"LGT \" int($0) \"%\"}' ", "r")
  self.status = fh:read("*l") or 'Unknown'

  return self
end

return Brightness 
