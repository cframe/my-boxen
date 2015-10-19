class people::cframe {  
  # custom modules
  include firefox
  include chrome
  include textmate::textmate2::release
  include vlc
  include mysql
  include gitx
  # include daisy_disk
  include dropbox
  # include appcleaner
  # include fluid
  include transmission
  include googleearth
  include virtualbox
  include heroku
  include sequel_pro
  include spotify
  include openoffice
  include unarchiver
  include ios7_screensaver
  include plistfiles

  include osx::global::enable_keyboard_control_access
  include osx::dock::dim_hidden_apps
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores
  include osx::global::key_repeat_rate  
  include osx::disable_dashboard
  class { 'osx::dock::icon_size': 
    size => 31
  }
  class { 'osx::dock::zoom_icon_size': 
    size => 46
  }
  class { 'osx::global::key_repeat_delay':
    delay => 10
  }
  include osx::dock::align_left
  include osx::dock::top_right_hot_corner_screensaver

  git::config::global { 'user.email':
    value  => 'colin@colinframe.com'
  }
  git::config::global { 'user.name':
    value  => 'Colin'
  }

  osx::recovery_message { 'If this Mac is found, please call 07980241415': }
  include garmin_express
  include googledrive
  include trainer_road
  include flux

  include open_emu
  include duet
  include boxer

  include projects::mymunros
  # include projects::bagger
  include projects::percentify

  include projects::office
  include projects::itison
  include projects::hub
}
