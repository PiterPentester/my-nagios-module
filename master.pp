node 'master.puppet.io' {
    include nagios::install
    include nagios::user
    include nagios::get_and_untar_files
    include nagios::make_install_core
    include nagios::make_nrpe
    include nagios::config_agent
    include nagios::config_master
    include nagios::config_commands
    include nagios::nrpe_service
    include nagios::services_master
    include nagios::init_plugins
}
