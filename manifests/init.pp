# == Class: casperjs
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class casperjs (
  $package_name = $::casperjs::params::package_name
) inherits ::casperjs::params {

  # validate parameters here

  class { '::casperjs::install': } ->
    Class['::casperjs']
}
