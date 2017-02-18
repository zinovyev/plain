package = "plain"
version = "scm-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      plain = "src/plain.lua",
      ["plain.widgets.battery"] = "src/widgets/battery.lua",
      ["plain.widgets.widget"] = "src/widgets/widget.lua"
   }
}
