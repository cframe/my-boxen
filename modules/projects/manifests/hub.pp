class projects::hub {
  $home = "/Users/${::boxen_user}"
  
  include qt
  include wkhtmltopdf
  include ruby::1_9_2_p290
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    ruby          => '1.9.2-p290',
    source        => 'dadaevents/itison-hub'
  }
  
}
