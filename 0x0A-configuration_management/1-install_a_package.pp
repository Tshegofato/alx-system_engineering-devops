#!/usr/bin/pup
# Install an especific version of flask (2.1.0)

package {
   'python3.8.':
  ensure => '3.3.10',
}

package {
   'python3-pip':
  ensure => installed,
}

package {
   'flask':
  ensure => '2.1.0',
  require => package['python3-pip'],
  provider => 'pip',
}

package {
  'werkzeug':
  ensure => '2.2.2',
  require => package['python3-pip'],
  provide => 'pip',
}
