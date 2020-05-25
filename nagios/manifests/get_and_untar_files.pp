# == Class: nagios::get_and_untar_files
class nagios::get_and_untar_files inherits nagios {


  exec { '/usr/bin/wget -O nagioscore.tar.gz https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.6.tar.gz':
    cwd => '/tmp',
    user        => 'root',
  }

  exec { 'untar nagios core':
    command     => '/bin/tar -xzvf /tmp/nagioscore.tar.gz -C /tmp',
    user        => 'root',
  }


  exec { '/usr/bin/wget --no-check-certificate -O nrpe.tar.gz https://github.com/NagiosEnterprises/nrpe/archive/nrpe-3.2.1.tar.gz':
    cwd => '/tmp',
    user        => 'root',
  }
  exec { 'untar nagios nrpe':
    command     => '/bin/tar -xzvf /tmp/nrpe.tar.gz -C /tmp',
    user        => 'root',
  }


  exec { '/usr/bin/wget -O nagios-plugins.tar.gz https://github.com/nagios-plugins/nagios-plugins/archive/release-2.3.3.tar.gz':
    cwd => '/tmp',
    user        => 'root',
  }
  exec { 'untar nagios plugins':
    command     => '/bin/tar -xzvf /tmp/nagios-plugins.tar.gz -C /tmp',
    user        => 'root',
  }

}
