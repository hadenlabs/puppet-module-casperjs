# == Class casperjs::install
#
# This class is called from module for install.
#
class casperjs::install {

  exec{ "casperjs clone repository":
    command => "git clone ${::casperjs::package_repository} ${::casperjs::package_app_name}",
    cwd => "${::casperjs::package_path_tmp}",
    require => [Package['git']],
    unless => "ls -l ${::casperjs::package_fullpath_tmp}",
  }

  exec{ "casperjs move directory opt":
    command => "mv ${::casperjs::package_app_name} /opt/",
    cwd => "${::casperjs::package_path_tmp}",
    require => [Exec['casperjs clone repository']],
    unless => "ls -l /opt/${::casperjs::package_app_name}",
  }

  exec{ "casperjs link bin":
    command => "ln -s ${::casperjs::package_fullpath_tmp}/bin/casperjs ${::casperjs::package_path_bin}",
    cwd => "${::casperjs::package_path_tmp}",
    require => [Exec['casperjs move directory opt']],
    unless => "${::casperjs::package_app_name} --version",
  }

}
