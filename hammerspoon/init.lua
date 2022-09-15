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
  ['com.jetbrains.intellij.ce'] = {
    bundleID = 'com.jetbrains.intellij.ce',
    hyper_key='3'
  },
  ['com.apple.MobileSMS'] = {
    bundleID = 'com.apple.MobileSMS',
    hyper_key='m'
  },
  ['us.zoom.xos'] = {
    bundleID = 'us.zoom.xos',
    hyper_key='z'
  },
  ['com.hnc.Discord'] = {
    bundleID = 'com.hnc.Discord',
    hyper_key='d'
  },
  ['com.tinyspeck.slackmacgap'] = {
    bundleID = 'com.tinyspeck.slackmacgap',
    hyper_key='s'
  },
  ['notion.id'] = {
    bundleID = 'notion.id',
    hyper_key='n'
  },
  ['com.google.Chrome.app.dibeblefpdjapcdhajpidiklcdpjpipk'] = {
    -- Paper
    bundleID = 'com.google.Chrome.app.dibeblefpdjapcdhajpidiklcdpjpipk',
    hyper_key='p'
  },
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

hyper = require('hyper')
hyper.start(config)
