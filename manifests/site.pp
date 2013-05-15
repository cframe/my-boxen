require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => Class['git']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  # include dnsmasq
  include git
  # include hub
  # include nginx
  # include nvm

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  # include nodejs::0-4
  # include nodejs::0-6
  # include nodejs::0-8

  # default ruby versions
  include ruby::1_8_7
  include ruby::1_9_2
  include ruby::1_9_3
  include ruby::2_0_0

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
  
  # custom modules
  include firefox
  include chrome
  include textmate::textmate2::release
  include vlc
  include mysql
  include gitx
  include daisy_disk
  include dropbox
  # include appcleaner
  # include fluid
  include transmission
  include wget
  include googleearth
  include virtualbox
  include heroku
  include sequelpro
  include spotify
  
  include osx::global::enable_keyboard_control_access
  include osx::dock::dim_hidden_apps
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores
  
  git::config::global { 'user.email':
    value  => 'colin@colinframe.com'
  }
  git::config::global { 'user.name':
    value  => 'Colin'
  }
}

node 'heartofgold.local' {
  include git
  
  osx::recovery_message { 'If this Mac is found, please call 07980241415': }
  include garmin_ant_agent
  include google_drive
  include trainingpeaks_device_agent
  include watts
  include trainerroad
  
  include projects::office
}

node 'marvin.local' {
  include github
  
  include virtualbox
  
  include android::sdk
  include android::platform_tools
  include android::10
  include android::15
  include android::16
  include android::17
  android::version { '10':
    options => ['platform', 'add_on', 'system_image'] 
  }
  android::version { '15':
    options => ['platform', 'add_on', 'system_image'] 
  }
  android::version { '16':
    options => ['platform', 'add_on', 'system_image'] 
  }
  android::version { '17':
    options => ['platform', 'add_on', 'system_image'] 
  }
  android::extra { 'extra-intel-intel_hardware_accelerated_execution_manager': }
  
  include induction
  include google_notifier
  include skitch
  include imagemagick
  include wget
  include wkhtmltopdf
  
  include projects::office
}
