# == Class: nagios::nrpe_service
class nagios::nrpe_service inherits nagios {
    service { 'nrpe':
      ensure     => running,
      enable     => true,
      subscribe  => File['/etc/xinetd.d/nrpe.cfg'],
      hasstatus  => true,
      hasrestart => true,
    }
}
