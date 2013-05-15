class projects::office {
  $home = "/Users/${::luser}"
  
  boxen::project { 'office':
    dir           => "${home}/Projects/office", 
    mysql         => true,
    ruby          => '1.9.3',
    source        => 'dadaevents/itison-office'
  }
  
  file { '/tmp/mysql.sock':
    ensure => link,
    target => '/opt/boxen/data/mysql/socket',
  }
}
