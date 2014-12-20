class projects::office {
  $home = "/Users/${::boxen_user}"
  
  git::config::local { 'colin.frame@itison.com office':
    ensure => present,
    repo   => "${home}/Projects/office",
    key    => 'user.email',
    value  => 'colin.frame@itison.com'
  }
  
  boxen::project { 'office':
    dir           => "${home}/Projects/office", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'itison/office'
  }
  
}
