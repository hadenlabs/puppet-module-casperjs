# == Class casperjs::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class casperjs::service {

  service { $::casperjs::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
