class icu4c {
  include boxen::config

  package { 'icu4c':
    ensure => latest
  }

  # It's keg-only by default.

  exec { 'brew link icu4c':
    creates => "${boxen::config::home}/homebrew/bin/icu-config",
    require => Package['icu4c']
  }
}
