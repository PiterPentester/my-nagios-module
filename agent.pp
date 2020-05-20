node 'worker1.puppet.io', 'worker2.puppet.io' {
    include nagios::install_on_agent
    include nagios::user
    include nagios::config_agent
    include nagios::nrpe_service
}
