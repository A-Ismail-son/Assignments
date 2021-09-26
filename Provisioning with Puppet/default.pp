
exec {'apt-get update':
command => '/usr/bin/apt-get update'
}


package { 'node':
require => Exec['install script'],
ensure => installed,

}

package { 'curl':
require => Exec['apt-get update'],
ensure => 'installed 

}

exec { 'install script':
command => '/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E b>
}


exec { 'build essential':
    require => Exec['install script', 'apt-get update'],
    command => '/usr/bin/sudo apt-get install -y build-essential'
}

