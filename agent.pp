node 'worker1.puppet.io', 'worker2.puppet.io' {
    include nagios::install
    include nagios::user
    include nagios::make_nrpe
    include nagios::config_agent
    include nagios::config_commands
    include nagios::nrpe_service
    include nagios::init_plugins
}
