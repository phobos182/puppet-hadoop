# Class: hadoop::namenode
#
# This module manages hadoop namenode
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop
#
# Sample Usage: include hadoop::namenode
#
class hadoop::namenode {
  include hadoop
  Class['hadoop::install'] -> Class['hadoop::namenode']
  Class['hadoop::config'] -> Class['hadoop::namenode']

  package { 'hadoop-0.20-namenode':
    ensure => installed
  }

  service { 'hadoop-0.20-namenode':
    require => Package['hadoop-0.20-namenode'],
    enable  => true
  }

}
