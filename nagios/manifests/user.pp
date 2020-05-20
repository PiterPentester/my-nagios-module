# == Class: nagios::user
class nagios::user inherits nagios {

    user { 'nagios':
      ensure => present,
      shell  => '/bin/bash',
    }

}
