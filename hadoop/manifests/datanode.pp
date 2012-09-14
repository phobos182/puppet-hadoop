# Class: hadoop::datanode
#
# This module manages hadoop datanode
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop
#
# Sample Usage: include hadoop::datanode
#
class hadoop::datanode {
  include hadoop
  Class['hadoop::install'] -> Class['hadoop::datanode']
  Class['hadoop::config'] -> Class['hadoop::datanode']

  package { 'hadoop-0.20-datanode':
    ensure => installed
  }

  service { 'hadoop-0.20-datanode':
    require => Package['hadoop-0.20-datanode'],
    enable  => true
  }

}
