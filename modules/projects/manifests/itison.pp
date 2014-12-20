class projects::itison {
  $home = "/Users/${::boxen_user}"
  
  include libtool
  include imagemagick
  include geoip
  
  git::config::local { 'colin.frame@itison.com itison':
    ensure => present,
    repo   => "${home}/Projects/itison",
    key    => 'user.email',
    value  => 'colin.frame@itison.com'
  }
  
  boxen::project { 'itison':
    dir           => "${home}/Projects/itison", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'itison/itison'
  }
    
}
