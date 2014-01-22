class projects::itison {
  $home = "/Users/${::boxen_user}"
  
  include libtool
  include imagemagick
  include geoip
  
  boxen::project { 'itison':
    dir           => "${home}/Projects/itison", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'dadaevents/itison'
  }
    
}
