function p(variable)
  -- hs.inspect.inspect() will print a human-readable version of any variable
  -- you throw at it.
  print(hs.inspect.inspect(variable))
end

hyper = {'cmd', 'ctrl', 'alt', 'shift'}

config = {}
config.applications = {
  ['com.google.Chrome'] = {
    bundleID = 'com.google.Chrome',
    hyper_key='c'
  },
  ['com.microsoft.VSCode'] = {
    bundleID = 'com.microsoft.VSCode',
    hyper_key='v'
  },
  -- ['com.jetbrains.intellij.ce'] = {
  --   bundleID = 'com.jetbrains.intellij.ce',
  --   hyper_key='3'
  -- },
  -- ['com.apple.MobileSMS'] = {
  --   bundleID = 'com.apple.MobileSMS',
  --   hyper_key='m'
  -- },
  ['us.zoom.xos'] = {
    bundleID = 'us.zoom.xos',
    hyper_key='z'
  },
  -- ['com.hnc.Discord'] = {
  --   bundleID = 'com.hnc.Discord',
  --   hyper_key='d'
  -- },
  ['com.tinyspeck.slackmacgap'] = {
    bundleID = 'com.tinyspeck.slackmacgap',
    hyper_key='s'
  },
  -- ['notion.id'] = {
  --   bundleID = 'notion.id',
  --   hyper_key='n'
  -- },
  ['com.googlecode.iterm2'] = {
    -- This is different than the iTerm hot key
    bundleID = 'com.googlecode.iterm2',
    hyper_key='t',
  },
  ['com.culturedcode.ThingsMac'] = {
    bundleID = 'com.culturedcode.ThingsMac',
    hyper_key='d',
  }
}

function switchToAndFromApp(bundleID)
  local focusedWindow = hs.window.focusedWindow()
  p(focusedWindow)
  if focusedWindow and focusedWindow:application():bundleID() == bundleID then
    -- Not sure how to natively in hammerspoon toggle between
    -- active window.
    hs.eventtap.keyStroke("cmd", "`")
  else
    hs.application.launchOrFocusByBundleID(bundleID)
  end
end


hs.fnutils.map(config.applications, function(app)
  if app.hyper_key then
    hs.hotkey.bind(hyper, app.hyper_key, function()
      switchToAndFromApp(app.bundleID)
    end)
  end
end)

require('rich-link-copy')