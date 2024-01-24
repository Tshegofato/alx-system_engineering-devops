#!/usr/bin/env puppet
# Puppet manifest to configure SSH client settings.

# Define SSH client configuration
file { '/home/your_username/.ssh/config':
  ensure  => present,
  content => "Host *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
  mode    => '0600',
  owner   => 'your_username',
  group   => 'your_username',
}

# Set correct permissions for the .ssh directory
file { '/home/your_username/.ssh':
  ensure => directory,
  mode   => '0700',
  owner  => 'your_username',
  group  => 'your_username',
}

# Notify user about the changes
notify { 'SSH configuration updated successfully':
  require => File['/home/your_username/.ssh/config'],
}
