# plain
Plain widgets pack for AwesomeWM 4

## Install

Install with luarocks:
```bash
sudo luarocks install plain
```

## Set Up

In your `rc.lua`:
```lua
local plain = require('plain')

    -- ...

-- {{{ MyWidgets
local mybattery = plain.widget.battery()
-- }}}

    -- ...

awful.screen.connect_for_each_screen(function(s)

    -- ...

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            wibox.widget.systray(),
            mybattery(), --                                 <-- This line here!
            mytextclock,
            s.mylayoutbox,
        },
    }
end)
```

## Call manually

You can try any widget calling it manually:
```bash
$ lua
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
> plain = require('plain')
> battery = plain.widget:battery()
> battery:get_status()
nil
> battery:refresh()
table: 0x2205440
> battery:get_status()
FULL 100%
```
