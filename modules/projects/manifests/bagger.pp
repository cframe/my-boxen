class projects::bagger {
  $home = "/Users/${::boxen_user}"
  
  boxen::project { 'bagger':
    dir           => "${home}/Projects/bagger", 
    mysql         => true,
    ruby          => '2.2.0',
    source        => 'cframe/bagger'
  }
  
}
