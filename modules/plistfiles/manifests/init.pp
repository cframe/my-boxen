class plistfiles {
  $home = "/Users/${::boxen_user}"
  $plistfiles_dir = "${home}/my/plistfiles"

  repository { $plistfiles_dir:
    source => "${::github_user}/plistfiles"
  }

  file { "${home}/Library/Preferences/com.apple.Terminal.plist":
    ensure  => link,
    target  => "${plistfiles_dir}/com.apple.Terminal.plist",
    require => Repository[$plistfiles_dir]
  }
}