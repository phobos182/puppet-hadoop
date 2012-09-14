# Class: hadoop::install
#
# This module manages hadoop installation
#
# Parameters: None
#
# Actions: None
#
# Requires: <your repository>
#
# Sample Usage: include hadoop::install
#
class hadoop::install {
  include hadoop::params

  package { [ 'hadoop-0.20', 'hadoop-0.20-native', 'liblzo2-dev', 'liblzo2-2', 'hadoop-lzo', 'hue-plugins' ]:
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
