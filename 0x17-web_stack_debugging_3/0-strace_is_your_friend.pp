# A Puppet manifest to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

file_line { 'replace_line':
  path    => $file_to_edit,
  line    => 'php',
  match   => 'phpp',
  ensure  => present,
}

