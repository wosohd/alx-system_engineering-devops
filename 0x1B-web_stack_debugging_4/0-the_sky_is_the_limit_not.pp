#Increases the traffic an nginx server can handle
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'],
}

#Nginx restart
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Exec['fix--for-nginx'],
}
