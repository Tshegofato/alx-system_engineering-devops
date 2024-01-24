#!/usr/bin/env bash
# Puppet manifest to configure SSH client settings.

# Define SSH client configuration
file { '/home/your_username/.ssh/config':
  ensure  => present,
  content => "Host *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
  mode    => '0600',
  owner   => 'your_username',
  group   => 'your_username',
}

# Notify user about the changes
notify { 'SSH configuration updated successfully':
  require => File['/home/Tshegofato/.ssh/config'],
}
