# == Class: nagios::make_nrpe
class nagios::make_nrpe inherits nagios {
    exec { '/bin/sh ./configure --enable-command-args --with-nagios-user=nagios --with-nagios-group=nagios --with-ssl=/usr/bin/openssl --with-ssl-lib=/usr/lib/x86_64-linux-gnu':
        cwd => '/tmp/nrpe-4.0.3',
        path => '/usr/bin:/usr/sbin:/bin:/tmp/nrpe-4.0.3',
        user => 'root',
    }

    exec { 'make all ':
        cwd => '/tmp/nrpe-4.0.3',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }

    exec { 'make install ':
        cwd => '/tmp/nrpe-4.0.3',
        path => '/usr/bin:/usr/sbin:/bin',
        user => 'root',
    }
}
