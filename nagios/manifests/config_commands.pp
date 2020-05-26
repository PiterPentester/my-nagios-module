# == Class: nagios::config_commands
class nagios::config_commands inherits nagios {
file { '/usr/local/nagios/libexec/check_puppet_port.sh':
  ensure  => file,
  owner   => 'nagios',
  group   => 'nagios',
  mode    => '0744',
  content => template('nagios/check_puppet_port.sh.erb'),
}

file { '/usr/local/nagios/libexec/check_httpd_processes.sh':
  ensure  => file,
  owner   => 'nagios',
  group   => 'nagios',
  mode    => '0744',
  content => template('nagios/check_httpd_processes.sh.erb'),
}
}
