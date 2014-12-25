class projects::hub {
  $home = "/Users/${::boxen_user}"
  
	include libtool
  include imagemagick
  
  git::config::local { 'colin.frame@itison.com hub':
    ensure => present,
    repo   => "${home}/Projects/hub",
    key    => 'user.email',
    value  => 'colin.frame@itison.com'
  }
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'itison/hub'
  }
  
}
