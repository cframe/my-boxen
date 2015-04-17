class projects::office {
  $home = "/Users/${::boxen_user}"
  
  include qt
  include java
  
  git::config::local { 'colin.frame@itison.com office':
    ensure => present,
    repo   => "${home}/Projects/office",
    key    => 'user.email',
    value  => 'colin.frame@itison.com'
  }
  
  git::config::local { 'colin.frame@itison.com office remote origin':
    ensure => present,
    repo   => "${home}/Projects/office",
    key    => 'remote.origin.url',
    value  => 'gh-cframe_itison:itison/office'
  }
  
  mysql::db { 'core_gasket_development': }
  mysql::db { 'core_gasket_test': }
  mysql::db { 'office_gasket_development': }
  mysql::db { 'office_gasket_test': }
  
  boxen::project { 'office':
    dir           => "${home}/Projects/office", 
    mysql         => true,
    redis         => true,
    ruby          => '2.0.0-p598',
    source        => 'itison/office'
  }
  
}
