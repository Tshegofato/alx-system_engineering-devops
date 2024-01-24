#!/usr/bin/pup

# Install python3-pip
exec { 'install_python3_pip':
  command => '/usr/bin/apt-get install -y python3-pip',
  path    => ['/usr/bin'],
}

# Install an specific version of Flask (2.1.0) using pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['install_python3_pip'],
}

# Install werkzeug
exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install werkzeug',
  path    => ['/usr/bin'],
  require => Exec['install_python3_pip'],
}


