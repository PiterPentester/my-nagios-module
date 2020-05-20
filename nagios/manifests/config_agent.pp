# == Class: nagios::config_agent
class nagios::config_agent inherits nagios {
    file { '/etc/xinetd.d/nrpe.cfg':
      ensure  => file,
      owner   => 'nagios',
      group   => 'nagios',
      mode    => '0644',
      content => template('nagios/nrpe.cfg.erb'),
    }
}
