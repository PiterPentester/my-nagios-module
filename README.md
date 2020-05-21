# my-nagios-module
My module for Puppet to create nagios cluster (1 master, 2 workers) (WORKS IN PAIR WITH puppet-cluster [https://github.com/PiterPentester/puppet-cluster.git])
<p>How to test: 
  
1) ON MASTER copy nagios dir into /etc/puppetlabs/code/environments/production/modules/
  
2) ON MASTER copy agent.pp & master.pp into /etc/puppetlabs/code/environments/production/manifests

3) ON AGENT run "sudo /opt/puppetlabs/bin/puppet agent --test"

4) ON MASTER run "sudo /opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/master.pp"
</p>
