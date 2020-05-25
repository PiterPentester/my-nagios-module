# == Class: nagios::install
class nagios::install inherits nagios {

    Package { ensure => 'installed' }

    $enhancers = [ 'gcc', 'glibc', 'glibc-common', 'wget', 'unzip',
    'httpd', 'php', 'gd', 'gd-devel', 'perl', 'postfix',
    'perl-Net-SNMP', 'make', 'gettext', 'automake', 'autoconf',
    'net-snmp', 'net-snmp-utils', 'epel-release',
    'nrpe', 'nagios-plugins-all', 'openssl-devel' ]

    package { $enhancers: }

}
