class projects::hub {
  $home = "/Users/${::boxen_user}"
  
	include libtool
  include imagemagick
  
  # git::config::local { 'colin.frame@itison.com hub':
  #   ensure => present,
  #   repo   => "${home}/Projects/hub",
  #   key    => 'user.email',
  #   value  => 'colin.frame@itison.com'
  # }
  
  git::config::local { 'colin.frame@itison.com hub remote origin':
    ensure => present,
    repo   => "${home}/Projects/hub",
    key    => 'remote.origin.url',
    value  => 'gh-cframe_itison:itison/hub'
  }
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    redis         => true,
    ruby          => '2.0.0-p647',
    source        => 'itison/hub'
  }
  
}
