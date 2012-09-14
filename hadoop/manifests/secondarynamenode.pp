# Class: hadoop::secondarynamenode
#
# This module manages hadoop secondarynamenode
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop
#
# Sample Usage: include hadoop::secondarynamenode
#
class hadoop::secondarynamenode {
  include hadoop
  Class['hadoop::install'] -> Class['hadoop::secondarynamenode']
  Class['hadoop::config'] -> Class['hadoop::secondarynamenode']

  package { 'hadoop-0.20-secondarynamenode':
    ensure => installed
  }

  service { 'hadoop-0.20-secondarynamenode':
    require => Package['hadoop-0.20-secondarynamenode'],
    enable  => true
  }

}
