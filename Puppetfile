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

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

# github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
# github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
# github "nginx",    "1.1.0"
# github "nodejs",   "1.0.0"
# github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

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
github "garmin_ant_agent",  "1.0.1", :repo => "cframe/puppet-garmin_ant_agent"
github "google_drive",  "1.0.0", :repo => "cframe/puppet-google_drive"
github "trainingpeaks_device_agent",  "1.0.0", :repo => "cframe/puppet-trainingpeaks_device_agent"
github "postgresql",  "1.0.0"
github "geoip",       "1.0.0"
github "sequelpro",   "1.0.0", :repo => "sheknows/puppet-sequelpro"
