# == Class: nagios::make_nrpe
class nagios::make_nrpe inherits nagios {
    exec { '/bin/sh ./configure --enable-command-args':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nrpe-nrpe-3.2.1',
        user => 'root',
    }

    exec { 'make all ':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'make install-groups-users ':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'make install ':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'make install-config ':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'make install-init ':
        cwd => '/tmp/nrpe-nrpe-3.2.1',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }


    exec { 'echo >> /etc/services':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'echo "# Nagios services" >> /etc/services':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'echo "nrpe    5666/tcp" >> /etc/services':
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }


}
