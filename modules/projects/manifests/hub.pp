class projects::hub {
  $home = "/Users/${::boxen_user}"
  
	include libtool
  include imagemagick
  
  boxen::project { 'hub':
    dir           => "${home}/Projects/hub", 
    mysql         => true,
    ruby          => '1.9.3-p484',
    source        => 'dadaevents/itison-hub'
  }
  
}
