# == Class: nagios::install_on_agent
class nagios::install_on_agent {

    Package { ensure => 'installed' }

    $enhancers = [ 'epel-release',
    'nrpe', 'nagios-plugins-all' ]

    package { $enhancers: }
}
