
class mysql {
  package { 'mysql-server':
    ensure  => latest,
    require => Exec['apt-get update']
    
    }
    
    service { 'mysql':
    ensure  => running,
    require => Package['mysql-server']
    
    }
    
    exec { 'mysqladmin':
    command => '/usr/bin/mysqladmin -u root password PA2577',
    require => Package['mysql-server'],
  }
}
    
    
    
