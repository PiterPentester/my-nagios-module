# == Class: nagios::init_plugins
class nagios::init_plugins inherits nagios {
    exec { './tools/setup':
        cwd => '/tmp/nagios-plugins-release-2.3.3/',
        path     => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/tmp/nagios-plugins-release-2.3.3/',
        user => 'root',
    }

    exec { './configure':
        cwd => '/tmp/nagios-plugins-release-2.3.3/',
        path     => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/tmp/nagios-plugins-release-2.3.3/',
        user => 'root',
    }

    exec { 'make':
        cwd => '/tmp/nagios-plugins-release-2.3.3/',
        path     => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/tmp/nagios-plugins-release-2.3.3/',
        user => 'root',
    }

    exec { 'make install  ':
        cwd => '/tmp/nagios-plugins-release-2.3.3/',
        path     => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/tmp/nagios-plugins-release-2.3.3/',
        user => 'root',
    }

    exec { 'systemctl restart nagios httpd nrpe':
        user => 'root',
        path     => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin',
    }
}
