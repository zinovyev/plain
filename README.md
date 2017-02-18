# plain
Plain widgets pack for AwesomeWM 4

## Install

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
            mybattery, --                                  <-- This line!
            mytextclock,
            s.mylayoutbox,
        },
    }
end)
```
