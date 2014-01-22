class projects::hub {
  $home = "/Users/${::boxen_user}"
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'dadaevents/itison-hub'
  }
  
}
