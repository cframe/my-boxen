class projects::itison {
  include wkhtmltopdf
  # include imagemagick
  include geoip
  
  $home = "/Users/${::luser}"
  
  boxen::project { 'itison':
    dir           => "${home}/Projects/itison", 
    mysql         => true,
    ruby          => '1.8.7',
    source        => 'dadaevents/itison'
  }
    
}
