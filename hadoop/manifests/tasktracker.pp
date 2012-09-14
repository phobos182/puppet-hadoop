# Class: hadoop::tasktracker
#
# This module manages hadoop tasktracker
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop
#
# Sample Usage: include hadoop::tasktracker
#
class hadoop::tasktracker {
  include hadoop
  Class['hadoop::install'] -> Class['hadoop::tasktracker']
  Class['hadoop::config'] -> Class['hadoop::tasktracker']

  package { 'hadoop-0.20-tasktracker':
    ensure => installed
  }

  service { 'hadoop-0.20-tasktracker':
    require => Package['hadoop-0.20-tasktracker'],
    enable  => true
  }

}
