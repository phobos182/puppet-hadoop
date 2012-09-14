# Define:hadoop::format
#
# This define formats a directory to be a Hadoop (Data|Name|SN) Node
#
# Parameters:path
#
# Actions:
#
# Requires:
#
# Sample Usage:
# hadoop::format { '/data/0':}
#
define hadoop::format {

  file { "${name}/hadoop":
    ensure  => directory,
    owner   => 'hdfs',
    group   => 'hadoop',
    mode    => '0755'
  }

  file { "${name}/hadoop/dfs":
    ensure  => directory,
    owner   => 'hdfs',
    group   => 'hadoop',
    mode    => '0755'
  }

  file { "${name}/hadoop/dfs/data":
    ensure  => directory,
    owner   => 'hdfs',
    group   => 'hadoop',
    mode    => '0700'
  }

  file { "${name}/hadoop/dfs/name":
    ensure  => directory,
    owner   => 'hdfs',
    group   => 'hadoop',
    mode    => '0700'
  }

  file { "${name}/hadoop/dfs/namesecondary":
    ensure  => directory,
    owner   => 'hdfs',
    group   => 'hadoop',
    mode    => '0700'
  }

  file { "${name}/hadoop/mapred":
    ensure  => directory,
    owner   => 'mapred',
    group   => 'hadoop',
    mode    => '0755'
  }

  file { "${name}/hadoop/mapred/local":
    ensure  => directory,
    owner   => 'mapred',
    group   => 'hadoop',
    mode    => '0755'
  }

  file { "${name}/hadoop/mapred/system":
    ensure  => directory,
    owner   => 'mapred',
    group   => 'hadoop',
    mode    => '0755'
  }

  file { "${name}/hadoop/mapred/temp":
    ensure  => directory,
    owner   => 'mapred',
    group   => 'hadoop',
    mode    => '0755'
  }

}
