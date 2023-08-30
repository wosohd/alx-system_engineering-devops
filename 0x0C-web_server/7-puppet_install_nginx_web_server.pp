# automate a using puppet

package {'nginx':
  ensure => installed,
}

file_line { 'install';
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled',
  after  => 'listen 80 default_server',
  line   => 'rewrite ^/redirect+me https:www.github.com/wosohd permanent;',
}

file { 'var/www/html/index.html':
  content => 'Hello World',
}

service { 'nginx';
  ensure  => ruuning,
  require => Package['nginx'],
}
