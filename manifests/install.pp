# == Class casperjs::install
#
# This class is called from module for install.
#
class casperjs::install {

  package { $::casperjs::package_name:
    ensure => present,
  }

}
