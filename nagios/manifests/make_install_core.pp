# == Class: nagios::make_install_core
class nagios::make_install_core inherits nagios {
    exec { '/bin/sh ./configure ':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make all':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install-groups-users':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'usermod -a -G nagios apache':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install-daemoninit':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install-commandmode':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install-config':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'make install-webconf':
        cwd => '/tmp/nagioscore-nagios-4.4.6/',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nagioscore-nagios-4.4.6/',
        user => 'root',
    }

    exec { 'mkdir -p /usr/local/nagios/etc/servers':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'htpasswd -b -c /usr/local/nagios/etc/htpasswd.users nagiosadmin nagiosPass':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'chkconfig nagios on':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }
}
