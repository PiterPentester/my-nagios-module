# == Class: nagios::config_agent
class nagios::config_agent inherits nagios {
    file { '/etc/xinetd.d/nrpe.cfg':
      ensure  => file,
      owner   => 'nagios',
      group   => 'nagios',
      mode    => '0644',
      content => template('nagios/nrpe.cfg.erb'),
    }

    file { '/usr/local/nagios/etc/nrpe.cfg':
      ensure  => file,
      owner   => 'nagios',
      group   => 'nagios',
      mode    => '0644',
      content => template('nagios/nrpe1.cfg.erb'),
    }

    exec { "sed -i '/^allowed_hosts=/s/$/,10.25.5.2/' /usr/local/nagios/etc/nrpe.cfg":
      path => '/usr/bin:/usr/sbin:/bin',
      user => 'root',
    }

    exec { "sed -i 's/^dont_blame_nrpe=.*/dont_blame_nrpe=1/g' /usr/local/nagios/etc/nrpe.cfg":
      path => '/usr/bin:/usr/sbin:/bin',
      user => 'root',
    }
}
