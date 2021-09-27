
exec {'apt-get update':
command => '/usr/bin/apt-get update'
}


package { 'nodejs':
ensure => installed,
require => Exec['install script']


}

package { 'curl':
ensure => 'installed,
require => Exec['apt-get update']


}

exec { 'install script':
command => '/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash-',
require => Exec['apt-get update']

}

