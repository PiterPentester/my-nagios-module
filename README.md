# my-nagios-module
My module for Puppet to create nagios cluster (1 master, 2 workers)
<p>How to test: 
  
1) copy nagios dir into /etc/puppetlabs/code/environments/production/modules/
  
2) copy agent.pp & master.pp into /etc/puppetlabs/code/environments/production/manifests

3) on agent run "sudo /opt/puppetlabs/bin/puppet agent --test"

4) on master run "sudo /opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/master.pp"
</p>
