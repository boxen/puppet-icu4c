# Public: Install icu4c from homebrew.
#
# Examples
#
#   include icu4c
class icu4c {
  include boxen::config

  package { 'icu4c':
    ensure => latest
  }
}
