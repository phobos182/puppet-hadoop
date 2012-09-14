# Class: hadoop::jobtracker
#
# This module manages hadoop jobtracker
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop
#
# Sample Usage: include hadoop::jobtracker
#
class hadoop::jobtracker {
  include hadoop
  Class['hadoop::install'] -> Class['hadoop::jobtracker']
  Class['hadoop::config'] -> Class['hadoop::jobtracker']

  package { 'hadoop-0.20-jobtracker':
    ensure => installed
  }

  service { 'hadoop-0.20-jobtracker':
    require => Package['hadoop-0.20-jobtracker'],
    enable  => true
  }

}
