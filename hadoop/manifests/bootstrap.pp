# Define:hadoop::bootstrap
#
# This define bootstraps a configuration directory with default files
#
# Parameters:path
#
# Actions:
#
# Requires:
#
# Sample Usage:
# hadoop::bootstrap { 'configuration_name': }
#
define hadoop::bootstrap {

  #_ DEFAULT PATHS _#
  Exec { path => '/usr/bin:/bin:/usr/sbin:/sbin' }

  #_ COPY DEFAULT CONFIG _#
  exec { "cp -rp /etc/hadoop-0.20/conf.empty /etc/hadoop-0.20/${name}":
    unless => "test -d /etc/hadoop-0.20/${name}",
  }

  #_ SYMLINK _#
  file { '/etc/hadoop-0.20/conf':
    ensure  => link,
    target  => "/etc/hadoop-0.20/${name}"
  }

}
