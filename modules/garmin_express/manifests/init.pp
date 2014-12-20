class garmin_express {
  package { 'GarminExpress':
    provider   => 'pkgdmg',
    source => 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  }
}