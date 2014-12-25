class open_emu {
  package { 'OpenEmu':
    provider   => 'compressed_app',
    source => 'https://github.com/OpenEmu/OpenEmu/releases/download/v1.0.4/OpenEmu_1.0.4.zip'
  }
}