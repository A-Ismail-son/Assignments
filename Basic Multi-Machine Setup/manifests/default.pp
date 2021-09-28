
node 'appserver' {
  include apt_update
  include nodejs
}

node 'dbserver' {
  include apt_update
  include mysql
}

node 'web' {
  include apt_update
  include nginx
  

node 'dbserver' {
  include apt_update
  include mysql_server
}


node 'default' {
include apt_get_update
}
