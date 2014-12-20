class trainer_road {
  package { 'TrainerRoad':
    provider   => 'pkgdmg',
    source => 'http://trainerroadcdn1.blob.core.windows.net/software/TrainerRoad.2.6.2.dmg'
  }
}