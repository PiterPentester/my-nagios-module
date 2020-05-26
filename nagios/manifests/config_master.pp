# == Class: nagios::config_master
class nagios::config_master inherits nagios {

  file { '/usr/local/nagios/etc/nagios.cfg':
    ensure  => file,
    owner   => 'nagios',
    group   => 'nagios',
    mode    => '0644',
    content => template('nagios/nagios.cfg.erb'),
  }

  file { '/usr/local/nagios/etc/objects/commands.cfg':
    ensure  => file,
    owner   => 'nagios',
    group   => 'nagios',
    mode    => '0644',
    content => template('nagios/commands.cfg.erb'),
  }

  file { '/usr/local/nagios/etc/servers/worker1.cfg':
    ensure  => file,
    owner   => 'nagios',
    group   => 'nagios',
    mode    => '0644',
    content => template('nagios/worker1.cfg.erb'),
  }

  file { '/usr/local/nagios/etc/servers/worker2.cfg':
    ensure  => file,
    owner   => 'nagios',
    group   => 'nagios',
    mode    => '0644',
    content => template('nagios/worker2.cfg.erb'),
  }

  file { '/usr/local/nagios/etc/objects/localhost.cfg':
    ensure  => file,
    owner   => 'nagios',
    group   => 'nagios',
    mode    => '0644',
    content => template('nagios/localhost.cfg.erb'),
  }

}
