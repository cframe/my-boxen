class projects::itison {
  $home = "/Users/${::boxen_user}"
  
  include libtool
  include imagemagick
  include geoip
  
  # git::config::local { 'colin.frame@itison.com itison':
  #   ensure => present,
  #   repo   => "${home}/Projects/itison",
  #   key    => 'user.email',
  #   value  => 'colin.frame@itison.com'
  # }
  
  git::config::local { 'colin.frame@itison.com itison remote origin':
    ensure => present,
    repo   => "${home}/Projects/itison",
    key    => 'remote.origin.url',
    value  => 'gh-cframe_itison:itison/itison'
  }
  
  boxen::project { 'itison':
    dir           => "${home}/Projects/itison", 
    mysql         => true,
    ruby          => '2.0.0-p648',
    source        => 'itison/itison'
  }
    
}
