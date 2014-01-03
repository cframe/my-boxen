class projects::office {
  $home = "/Users/${::boxen_user}"
  
  include ruby::1_9_3_p484
  
  boxen::project { 'office':
    dir           => "${home}/Projects/office", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'dadaevents/itison-office'
  }
  
}
