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
  ['com.hnc.Discord'] = {
    bundleID = 'com.hnc.Discord',
    hyper_key='d'
  },
  ['com.tinyspeck.slackmacgap'] = {
    bundleID = 'com.tinyspeck.slackmacgap',
    hyper_key='s'
  }
}

hyper = require('hyper')
hyper.start(config)
