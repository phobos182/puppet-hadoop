# Class: hadoop::sqoop
#
# This module manages hadoop sqoopation
#
# Parameters: None
#
# Actions: None
#
# Requires:
#
# Sample Usage: include hadoop::sqoop
#
class hadoop::sqoop {
  include hadoop::params
  Class['hadoop::install'] -> Class['hadoop::sqoop']

  package { 'mysql-client':
    ensure => 'installed'
  }

}
