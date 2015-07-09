# == Class casperjs::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class casperjs::params {

  $package_fullpath_tmp = "/var/tmp/casperjs/"
  $package_path_tmp = "/var/tmp/"
  $package_repository = 'https://github.com/n1k0/casperjs.git'
  $package_path_code = '/opt/casperjs'
  $package_app_name = 'casperjs'

  case $::osfamily {
    'Debian': {
      $package_name = 'casperjs'
      $package_path_bin = "/usr/local/bin/"
    }
    'RedHat', 'Amazon': {
      $package_name = 'casperjs'
      $package_path_bin = "/usr/local/bin/"
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
