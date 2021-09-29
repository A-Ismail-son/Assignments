
class nginx {

  package { 'nginx':
    ensure  => installed,
    require => Exec['apt-get update']
  }

  service { 'nginx':
    ensure  => running,
    require => Package['nginx']
  }
}
