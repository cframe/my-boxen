class projects::mymunros {
  $home = "/Users/${::boxen_user}"
  
  boxen::project { 'mymunros':
    dir           => "${home}/Projects/mymunros", 
    mysql         => true,
    ruby          => '2.0.0-p247',
    source        => 'cframe/mymunros.com'
  }
  
}
