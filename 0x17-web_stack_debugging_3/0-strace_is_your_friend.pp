#Puppet Manuscript that replaces a line in a file of a server

$file_to_edit = '/var/www/html/wp-settings.php'
$new_content = file("/etc/puppet/modules/mymodule/templates/${file_to_edit}.erb")

file { $file_to_edit:
  ensure  => 'file',       # Ensure that the file exists
  content => $new_content, # Set the content to the desired content
}
