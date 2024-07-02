/**
 * Puppet manifest file for configuring the 'your_server_name' node.
 * This manifest installs the 'apache' class with the 'installed' ensure parameter.
 */

node 'vagrant-ubuntu-trusty-64' {
    class { 'apache':
        ensure => 'installed',
    }
    exec { 'check_apache_installation':
        command => 'echo "Apache installation successful"',
        onlyif  => 'test -f /etc/httpd/conf/httpd.conf',
    }
}
$ip_address = $::ipaddress_eth1

exec { 'check_apache_installation':
    command => "echo 'Apache installation successful. Connect to $ip_address to check.'",
    onlyif  => 'test -f /etc/httpd/conf/httpd.conf',
}