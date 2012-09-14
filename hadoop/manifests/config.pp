# Class: hadoop::config
#
# This module manages the hadoop configuration directories
#
# Parameters: None
#
# Actions: None
#
# Requires: hadoop::install, hadoop
#
# Sample Usage: include hadoop::config
#
class hadoop::config {
  include hadoop::install
  include hadoop::params
  Class['hadoop::install'] -> Class['hadoop::config']

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/hdfs-site.xml":
    content => template('hadoop/hdfs-site.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/dfs.hosts":
    content => template('hadoop/dfs.hosts.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/dfs.hosts.exclude":
    content => template('hadoop/dfs.hosts.exclude.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/mapred.hosts":
    content => template('hadoop/mapred.hosts.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/mapred.hosts.exclude":
    content => template('hadoop/mapred.hosts.exclude.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/core-site.xml":
    content => template('hadoop/core-site.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/mapred-site.xml":
    content => template('hadoop/mapred-site.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/capacity-scheduler.xml":
    content => template('hadoop/capacity-scheduler.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/fair-scheduler.xml":
    content => template('hadoop/fair-scheduler.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/hadoop-env.sh":
    content => template('hadoop/hadoop-env.sh.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/hadoop-metrics.properties":
    content => template('hadoop/hadoop-metrics.properties.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/hadoop-policy.xml":
    content => template('hadoop/hadoop-policy.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { "/etc/hadoop-0.20/${hadoop::params::hadoop_conf_name}/mapred-queue-acls.xml":
    content => template('hadoop/mapred-queue-acls.xml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

}
