require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::homebrewdir}/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
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
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

class osx::dock::align_left {
  include osx::dock

  boxen::osx_defaults { 'Align the Dock to the left':
    user   => $::boxen_user,
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => 'left',
    notify => Exec['killall Dock'];
  }
}

class osx::dock::top_right_hot_corner_screensaver {
  include osx::dock
  
  boxen::osx_defaults { 'Set the top right hot corner to activate the screensaver':
    user   => $::boxen_user,
    key    => 'wvous-tr-corner',
    domain => 'com.apple.dock',
    type   => 'int', 
    value  => 5,
    notify => Exec['killall Dock'];
  }
}

class osx::dock::top_right_hot_corner_screensaver_modifier {
  include osx::dock
  
  boxen::osx_defaults { 'Set the top right hot corner to activate the screensaver':
    user   => $::boxen_user,
    key    => 'wvous-tr-modifier',
    domain => 'com.apple.dock',
    type   => 'int',
    value  => 0,
    notify => Exec['killall Dock'];
  }
}

class osx::dock::zoom_icon_size($size = 36) {
  include osx::dock

  boxen::osx_defaults { 'zoom icon size':
    domain => 'com.apple.dock',
    key    => 'largesize',
    type   => 'int',
    value  => $size,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }
}

class osx::disable_dashboard {
  boxen::osx_defaults { 'Disable Dashboard':
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => 'YES',
  }
}

node default {
  # core modules, needed for most things
  # include dnsmasq
  include git
  # include hub
  # include nginx

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  # nodejs::version { 'v0.6': }
  # nodejs::version { 'v0.8': }
  # nodejs::version { 'v0.10': }

  # default ruby versions
  ruby::version { '1.9.3-p484': }
  ruby::version { '2.0.0-p648': }
  ruby::version { '2.2.1': }
  
  # ruby::version { '2.1.0': }
  # ruby::version { '2.1.1': }
  # ruby::version { '2.1.2': }

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
  
  # Custom
  
  ruby_gem { 'bundler for all rubies':
    gem           => 'bundler',
    version       => '~> 1.0',
    ruby_version  => '*',
  }
  
  ruby_gem { 'foreman for all rubies':
    gem           => 'foreman',
    version       => '~> 0.78.0',
    ruby_version  => '*',
  }
}
