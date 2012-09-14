# Class: hadoop::install
#
# This module manages hadoop installation
#
# Parameters: None
#
# Actions: None
#
# Requires: apt::repo::cloudera
#
# Sample Usage: include hadoop::install
#
class hadoop::install {
  include hadoop::params
  include apt::repo::cloudera
  include sun-jdk6
  Class['apt::repo::cloudera'] -> Class['hadoop::install']
  Class['sun-jdk6'] -> Class['hadoop::install']

  package { [ 'hadoop-0.20', 'hadoop-0.20-native', 'hadoop-0.20-metrics', 'liblzo2-dev', 'liblzo2-2', 'hadoop-lzo', 'hue-plugins' ]:
    ensure => 'installed'
  }

  #_ CREATE TMP DIR _#
  file { $hadoop::params::hadoop_tmp_dir:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0777'
  }

  #_ BOOTSTRAP DEFAULT CONFIGURATION _#
  hadoop::bootstrap { $hadoop::params::hadoop_conf_name: }

  #_ FORMAT DATAVOLUMES _#
  # Check if data_volumes is empty. If so, then format the tmp dir
  if $::data_volumes {
    $array_of_volumes = split($::data_volumes, ',')
    hadoop::format { $array_of_volumes: }
  }
  else {
    hadoop::format { $hadoop::params::hadoop_tmp_dir: }
  }

}
