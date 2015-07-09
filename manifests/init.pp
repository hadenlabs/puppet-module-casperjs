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
  $package_repository = $::casperjs::params::package_repository,
  $package_path_code = $::casperjs::params::package_path_code,
  $package_fullpath_tmp = $::casperjs::params::package_fullpath_tmp,
  $package_path_tmp = $::casperjs::params::package_path_tmp,
  $package_path_bin = $::casperjs::params::package_path_bin,
  $package_app_name = $::casperjs::params::package_app_name,
) inherits ::casperjs::params {

  # validate parameters here

  class { '::casperjs::install': } ->
    Class['::casperjs']
}
