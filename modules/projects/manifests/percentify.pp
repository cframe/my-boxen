class projects::percentify {
  $home = "/Users/${::boxen_user}"
  
  boxen::project { 'percentify':
    dir           => "${home}/Projects/percentify", 
    ruby          => '1.9.3-p484',
    source        => 'cframe/percentify'
  }
  
}
