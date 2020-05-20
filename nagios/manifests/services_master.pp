# == Class: nagios::services_master
class nagios::services_master inherits nagios {

  service { 'nagios':
    ensure     => running,
    enable     => true,
    subscribe  => File['/usr/local/nagios/etc/nagios.cfg'],
    hasstatus  => true,
    hasrestart => true,
  }

  service { 'httpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  service { 'xinetd':
    ensure     => running,
    enable     => true,
    subscribe  => File['/etc/xinetd.d/nrpe.cfg'],
    hasstatus  => true,
    hasrestart => true,
  }

}
