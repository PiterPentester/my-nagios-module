# == Class: nagios::install_on_master
class nagios::install_on_master inherits nagios {

    Package { ensure => 'installed' }

    $enhancers = [ 'gcc', 'glibc', 'glibc-common', 'wget', 'unzip',
    'httpd', 'php', 'gd', 'gd-devel', 'perl', 'postfix',
    'perl-Net-SNMP', 'make', 'gettext', 'automake', 'autoconf',
    'openssl-devel', 'net-snmp', 'net-snmp-utils' ]

    package { $enhancers: }

}
