class projects::hub {
  $home = "/Users/${::boxen_user}"
  
  include qt
  include wkhtmltopdf
  include ruby::1_9_3_p484
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'dadaevents/itison-hub'
  }
  
}
