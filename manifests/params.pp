# == Class casperjs::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class casperjs::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'casperjs'
    }
    'RedHat', 'Amazon': {
      $package_name = 'casperjs'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
