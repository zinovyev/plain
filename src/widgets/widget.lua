---------------------------------------------------------------------------
-- @author Ivan Zinovyev <vanyazin@gmail.com>
-- @copyright 2017 Ivan Zinovyev 
-- @release 1.0.0
---------------------------------------------------------------------------

local capi = { timer = timer }

--- Base plain widget.
-- plain.widget.widget
local Widget = { proto = {} }

--- Create new widget.
-- @return A widget instance.
function Widget:new(...)
  local instance = {}
  setmetatable(instance, {
    __index = self,
    __call = function()
      return instance:get_widget()
    end,
  })
  instance.wibox = self.proto.wibox
  instance:init(...)

  return instance 
end

--- Init base values and actions.
-- @return A widget instance.
function Widget:init()
  return true
end

--- Define a prototype.
function Widget:set_proto(proto)
  self.proto.wibox = proto.wibox
end

--- Create a timer for repeating actions.
function Widget:start_timer(timeout, callback)
  if capi.timer then
    local timer = capi.timer { timeout = timeout }
    timer:connect_signal('timeout', callback)
    timer:start()
    timer:emit_signal('timeout')
  end
end

--- Create a timer for repeating actions.
-- @return A string status.
function Widget:get_status()
  return self.status
end

--- Refresh widget status.
function Widget:refresh()
end

--- Refresh widget status.
function Widget:redraw()
  if self.widget then
    self.widget.markup = self.status
  end
end

--- Get widget instance.
function Widget:get_widget()
  if nil == self.widget and self.wibox then
    self.widget = self.wibox.widget{
      markup = self.status,
      align  = 'center',
      valign = 'center',
      widget = self.wibox.widget.textbox
    }
  end

  return self.widget
end

return Widget
