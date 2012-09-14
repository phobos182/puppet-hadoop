# Class: hadoop::fuse
#
# This module manages hadoop fuseation
#
# Parameters: None
#
# Actions: None
#
# Requires:
#
# Sample Usage: include hadoop::fuse
#
class hadoop::fuse {
  include hadoop::params
  Class['hadoop::install'] -> Class['hadoop::fuse']

  package { 'hadoop-0.20-fuse':
    ensure => 'installed'
  }

}
