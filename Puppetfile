# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf", "1.0.0"
# github "dnsmasq",  "1.0.0"
github "gcc",      "2.0.1"
github "git",      "1.2.5"
github "homebrew", "1.4.1"
# github "hub",      "1.0.3"
github "inifile",  "1.0.0", :repo => "cprice-puppet/puppetlabs-inifile"
# github "nginx",    "1.4.2"
# github "nodejs",   "3.2.9"
github "openssl", "1.0.0"
github "repository", "2.2.0"
github "ruby",     "6.3.4"
github "stdlib",   "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"
github "xquartz", "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "firefox",     "1.0.4"
github "chrome",      "1.0.0"
github "textmate",    "1.1.0"
github "vlc",         "1.0.0"
github "mysql",       "1.0.0"
github "heroku",      "2.0.0"
github "gitx",        "1.2.0"
github "daisy_disk",  "1.0.0"
github "dropbox",     "1.1.0"
# github "appcleaner",  "1.0.0"
# github "fluid",       "1.0.0"
github "transmission","1.0.0"
github "watts",       "1.0.0"
github "wget",        "1.0.0"
github "googleearth", "1.0.0"
github "virtualbox",  "1.0.1"
github "property_list_key", "0.1.0", :repo => "glarizza/puppet-property_list_key"
github "osx",         "1.1.0"
github "android",     "0.0.5", :repo => "aafwu00/puppet-android"

github "garmin_ant_agent",  "1.0.1", :repo => "cframe/puppet-garmin_ant_agent"
github "google_drive",  "1.0.0", :repo => "cframe/puppet-google_drive"
github "trainingpeaks_device_agent",  "1.0.0", :repo => "cframe/puppet-trainingpeaks_device_agent"
github "postgresql",  "1.0.0"
github "geoip",       "1.0.0"
github "sequel_pro",  "1.0.0"
github "spotify",     "1.0.0"
github "trainerroad", "1.0.2", :repo => "cframe/puppet-trainerroad"
github "induction",   "1.0.0"
github "google_notifier", "1.0.1"
github "skitch",      "1.0.0"
github "libtool",     "1.0.0"
github "imagemagick", "1.2.1"
github "wget",        "1.0.0"
github "wkhtmltopdf", "1.0.0"
github "flux",        "0.0.1"
github "libreoffice", "4.0.4", :repo => "jasonamyers/puppet-libreoffice"
