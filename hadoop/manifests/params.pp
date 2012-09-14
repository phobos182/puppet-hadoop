# Class: hadoop::params
#
# This module manages hadoop::params
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class hadoop::params {
  #_ GENERIC _#
  $hadoop_conf_name = hiera('hadoop_conf_name', 'conf.hadoop')

  #_ CORE SITE _#
  $fs_default_name                = hiera('fs_default_name', 'hdfs://replace.me:8020')
  $hadoop_tmp_dir                 = hiera('hadoop_tmp_dir', '/tmp/hadoop')
  $fs_trash_interval              = hiera('fs_trash_interval', '15')
  $topology_script_file_name      = hiera('topology_script_file_name', '/etc/hadoop/conf/rack.sh')
  $local_cache_size               = hiera('local_cache_size', '1073741824')
  $io_compression_codecs          = hiera('io_compression_codecs', 'org.apache.hadoop.io.compress.GzipCodec,org.apache.hadoop.io.compress.DefaultCodec,com.hadoop.compression.lzo.LzoCodec,org.apache.hadoop.io.compress.BZip2Codec,org.apache.hadoop.io.compress.SnappyCodec')
  $io_compression_codec_lzo_class = hiera('io_compression_codec_lzo_class', 'com.hadoop.compression.lzo.LzoCodec')
  $io_file_buffer_size            = hiera('io_file_buffer_size', '65536')
  $io_sort_factor                 = hiera('io_sort_factor', '64')
  $io_sort_mb                     = hiera('io_sort_mb', '256')
  $hadoop_proxyuser               = hiera_hash('hadoop_proxyuser', { 'oozie' => ['hosts', '*', 'groups', '*'] })
  $webinterface_private_actions   = hiera('webinterface_private_actions', 'true')

  #_ CLUSTER HOSTS _#
  $cluster_dfs_hosts            = hiera_array('cluster_dfs_hosts', [ '' ])
  $cluster_dfs_hosts_exclude    = hiera_array('cluster_dfs_hosts_exclude', [ '' ])
  $cluster_mapred_hosts         = hiera_array('cluster_mapred_hosts', [ '' ])
  $cluster_mapred_hosts_exclude = hiera_array('cluster_mapred_hosts_exclude', [ '' ])

  #_ HDFS SITE _#
  $dfs_replication                       = hiera('dfs_replication', '3')
  $dfs_permissions                       = hiera('dfs_permissions', 'false')
  $dfs_datanode_failed_volumes_tolerated = hiera('dfs_datanode_failed_volumes_tolerated', '2')
  $dfs_hosts                             = hiera('dfs_hosts', '/etc/hadoop/conf/dfs.hosts')
  $dfs_hosts_exclude                     = hiera('dfs_hosts_exclude', '/etc/hadoop/conf/dfs.hosts.exclude')
  $dfs_datanode_du_reserved              = hiera('dfs_datanode_du_reserved', '10737418240')
  $dfs_namenode_handler_count            = hiera('dfs_namenode_handler_count', '64')
  $dfs_datanode_handler_count            = hiera('dfs_datanode_handler_count', '10')
  $dfs_block_size                        = hiera('dfs_block_size', '134217728')
  $dfs_datanode_socket_write_timeout     = hiera('dfs_datanode_socket_write_timeout', '0')
  $dfs_datanode_max_xcievers             = hiera('dfs_datanode_max_xcievers', '4096')
  $dfs_balance_bandwidthpersec           = hiera('dfs_balance_bandwidthpersec', '104857600')
  $dfs_namenode_plugins                  = hiera('dfs_namenode_plugins', 'org.apache.hadoop.thriftfs.NamenodePlugin')
  $dfs_datanode_plugins                  = hiera('dfs_datanode_plugins', 'org.apache.hadoop.thriftfs.DatanodePlugin')
  $dfs_thrift_address                    = hiera('dfs_thrift_address', '0.0.0.0:9090')

  #_ MAPRED SITE _#
  $mapred_job_tracker                                  = hiera('mapred_job_tracker', 'replace.me:8021')
  $mapred_hosts                                        = hiera('mapred_hosts', '/etc/hadoop/conf/mapred.hosts')
  $mapred_hosts_exclude                                = hiera('mapred_hosts_exclude', '/etc/hadoop/conf/mapred.hosts.exclude')
  $mapred_output_compression_codec                     = hiera('mapred_output_compression_codec', 'com.hadoop.compression.lzo.LzoCodec')
  $mapred_output_compression_type                      = hiera('mapred_output_compression_type', 'BLOCK')
  $mapred_output_compress                              = hiera('mapred_output_compress', 'false')
  $mapred_map_output_compression_codec                 = hiera('mapred_map_output_compression_codec', 'com.hadoop.compression.lzo.LzoCodec')
  $mapreduce_jobtracker_tasktracker_maxblacklists      = hiera('mapreduce_jobtracker_tasktracker_maxblacklists', '4')
  $mapreduce_job_maxtaskfailures_per_tracker           = hiera('mapreduce_job_maxtaskfailures_per_tracker', '4')
  $mapred_compress_map_output                          = hiera('mapred_compress_map_output', 'false')
  $mapred_child_java_opts                              = hiera('mapred_child_java_opts', '-Xms2048m -Xmx2048m')
  $mapred_child_ulimit                                 = hiera('mapred_child_ulimit', '5242880')
  $tasktracker_http_threads                            = hiera('tasktracker_http_threads', '80')
  $mapred_reduce_slowstart_completed_maps              = hiera('mapred_reduce_slowstart_completed_maps', '0.60')
  $mapred_map_tasks_speculative_execution              = hiera('mapred_map_tasks_speculative_execution', 'false')
  $mapred_reduce_tasks_speculative_execution           = hiera('mapred_reduce_tasks_speculative_execution', 'false')
  $mapreduce_tasktracker_cache_local_numberdirectories = hiera('mapreduce_tasktracker_cache_local_numberdirectories', '200')
  $mapred_fairscheduler_allocation_file                = hiera('mapred_fairscheduler_allocation_file', '/etc/hadoop/conf/fair-scheduler.xml')
  $mapred_fairscheduler_poolnameproperty               = hiera('mapred_fairscheduler_poolnameproperty', 'user.name')
  $mapred_fairscheduler_preemption                     = hiera('mapred_fairscheduler_preemption', 'true')
  $mapred_fairscheduler_sizebasedweight                = hiera('mapred_fairscheduler_sizebasedweight', 'false')
  $mapred_fairscheduler_weightadjuster                 = hiera('mapred_fairscheduler_weightadjuster', 'org.apache.hadoop.mapred.NewJobWeightBooster')
  $mapred_newjobweightbooster_factor                   = hiera('mapred_newjobweightbooster_factor', '3')
  $mapred_newjobweightbooster_duration                 = hiera('mapred_newjobweightbooster_duration', '300000')
  $mapred_job_reuse_jvm_num_tasks                      = hiera('mapred_job_reuse_jvm_num_tasks', '1')
  $hadoop_job_history_user_location                    = hiera('hadoop_job_history_user_location', 'none')
  $mapred_jobtracker_completeuserjobs_maximum          = hiera('mapred_jobtracker_completeuserjobs_maximum', '15')
  $mapred_job_tracker_handler_count                    = hiera('mapred_job_tracker_handler_count', '64')
  $mapred_tasktracker_map_tasks_maximum                = hiera('mapred_tasktracker_map_tasks_maximum', '4')
  $mapred_submit_replication                           = hiera('mapred_submit_replication', '4')
  $mapred_tasktracker_reduce_tasks_maximum             = hiera('mapred_tasktracker_reduce_tasks_maximum', '4')
  $mapred_userlog_retain_hours                         = hiera('mapred_userlog_retain_hours', '8')
  $mapred_reduce_parallel_copies                       = hiera('mapred_reduce_parallel_copies', '10')
  $jobtracker_thrift_address                           = hiera('jobtracker_thrift_address', '0.0.0.0:9290')
  $mapred_jobtracker_plugins                           = hiera('mapred_jobtracker_plugins', 'org.apache.hadoop.thriftfs.ThriftJobTrackerPlugin')
  $mapred_jobtracker_taskscheduler                     = hiera('mapred_jobtracker_taskscheduler', 'org.apache.hadoop.mapred.FairScheduler')

  #_ CAPACITY SCHEDULER _#
  $mapred_capacity_scheduler_default_supports_priority                 = hiera('mapred_capacity_scheduler_default_supports_priority', 'false')
  $mapred_capacity_scheduler_default_minimum_user_limit_percent        = hiera('mapred_capacity_scheduler_default_minimum_user_limit_percent', '100')
  $mapred_capacity_scheduler_default_maximum_initialized_jobs_per_user = hiera('mapred_capacity_scheduler_default_maximum_initialized_jobs_per_user', '2')
  $mapred_capacity_scheduler_init_poll_interval                        = hiera('mapred_capacity_scheduler_init_poll_interval', '5000')
  $mapred_capacity_scheduler_init_worker_threads                       = hiera('mapred_capacity_scheduler_init_worker_threads', '5')

  #_ CAPACITY SCHEDULER QUEUES _#
  $capacity_queues = hiera_hash('capacity_queues', { 'default' => [ 'capacity', '100', 'supports-priority', 'false', 'minimum-user-limit-percent', '100', 'maximum-initialized-jobs-per-user', '2'] } )

  #_ FAIR SCHEDULER _#
  $poolmaxjobsdefault               = hiera('poolmaxjobsdefault', '150')
  $usermaxjobsdefault               = hiera('usermaxjobsdefault', '150')
  $defaultminsharepreemptiontimeout = hiera('defaultminsharepreemptiontimeout', '600')
  $fairsharepreemptiontimeout       = hiera('fairsharepreemptiontimeout', '600')

  #_ FAIR SCHEDULER QUEUES _#
  $fair_pool_queues = hiera_hash('fair_pool_queues', { 'pool1' => [ 'minMaps', '10', 'minReduces', '5', 'maxRunningJobs', '10', 'minSharePreemptionTimeout', '300', 'weight', '1.0' ] })
  $fair_user_queues = hiera_hash('fair_user_queues', { 'user1' => [ 'maxRunningJobs', '10' ] })

  #_ QUEUE ACLS _#
  $hadoop_queues_acl = hiera('hadoop_queues_acl', { 'default' => [ 'acl-submit-job', '', 'acl-administer-jobs', '' ] })

  #_ HADOOP ENVIRONMENT _#
  $java_home                     = hiera('java_home', '/usr/lib/jvm/java-6-sun')
  $hadoop_home                   = hiera('hadoop_home', '/usr/lib/hadoop')
  $hadoop_classpath              = hiera_array('hadoop_classpath', [ '${HADOOP_CLASSPATH}:$HADOOP_HOME/lib/hadoop-lzo-0.4.10.jar:/etc/hbase/conf:/usr/lib/hbase/hbase-0.92.1.jar:/usr/lib/hbase/lib/zookeeper-3.4.3.jar' ])
  $java_library_path             = hiera_array('java_library_path', [ '$HADOOP_HOME/lib/native/Linux-amd64-64' ])
  $hadoop_heapsize               = hiera('hadoop_heapsize', '2048')
  $hadoop_opts                   = hiera_array('hadoop_opts', [ '-server -Dcom.sun.management.jmxremote.authenticate=true -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.password.file=$HADOOP_HOME/conf/jmxremote.password$JMX_SUFFIX' ])
  $hadoop_namenode_opts          = hiera_array('hadoop_namenode_opts', [ '-Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS -Dcom.sun.management.jmxremote.port=8004' ])
  $hadoop_secondarynamenode_opts = hiera_array('hadoop_secondarynamenode_opts', [ '-Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS -Dcom.sun.management.jmxremote.port=8015' ])
  $hadoop_datanode_opts          = hiera_array('hadoop_datanode_opts', [ '-Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS -Dcom.sun.management.jmxremote.port=8006' ])
  $hadoop_balancer_opts          = hiera_array('hadoop_balancer_opts', [ '-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS -Dcom.sun.management.jmxremote.port=8007' ])
  $hadoop_jobtracker_opts        = hiera_array('hadoop_jobtracker_opts', [ '-Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS -Dcom.sun.management.jmxremote.port=8008' ])
  $hadoop_tasktracker_opts       = hiera_array('hadoop_tasktracker_opts', [ '-Dcom.sun.management.jmxremote.port=8009' ])
  $env_include                   = hiera('env_include', [ 'RUN_COMMAND=$(echo $HADOOP_LOGFILE|cut -d"-" -f3|tr "[a-z]" "[A-Z]")', 'eval RUN_USER=\"\$HADOOP_${RUN_COMMAND}_USER\"', 'JMX_SUFFIX="${RUN_USER:+.}$RUN_USER"' ] )

  #_ METRICS _#
  $dfs_class      = hiera('dfs_class', 'org.apache.hadoop.hbase.metrics.file.TimeStampingFileContext')
  $dfs_period     = hiera('dfs_period', '60')
  $dfs_opts       = hiera('dfs_opts', { 'dfs.fileName' => '/var/log/hadoop/dfs-metrics.out' })
  $mapred_class   = hiera('mapred_class', 'org.apache.hadoop.hbase.metrics.file.TimeStampingFileContext')
  $mapred_period  = hiera('mapred_period', '60')
  $mapred_opts    = hiera('mapred_opts', { 'mapred.fileName' => '/var/log/hadoop/mapred-metrics.out' })
  $jvm_class      = hiera('jvm_class', 'org.apache.hadoop.hbase.metrics.file.TimeStampingFileContext')
  $jvm_period     = hiera('jvm_period', '60')
  $jvm_opts       = hiera('jvm_opts', { 'jvm.fileName' => '/var/log/hadoop/jvm-metrics.out'})
  $rpc_class      = hiera('rpc_class', 'org.apache.hadoop.hbase.metrics.file.TimeStampingFileContext')
  $rpc_period     = hiera('rpc_period', '60')
  $rpc_opts       = hiera('rpc_opts', { 'rpc.fileName' => '/var/log/hadoop/rpc-metrics.out' })

  #_ HADOOP SECURITY POLICY _#
  $security_client_protocol_acl          = hiera('security_client_protocol_acl', '*')
  $security_client_datanode_protocol_acl = hiera('security_client_datanode_protocol_acl', '*')
  $security_datanode_protocol_acl        = hiera('security_datanode_protocol_acl', '*')
  $security_inter_datanode_protocol_acl  = hiera('security_inter_datanode_protocol_acl', '*')
  $security_namenode_protocol_acl        = hiera('security_namenode_protocol_acl', '*')
  $security_inter_tracker_protocol_acl   = hiera('security_inter_tracker_protocol_acl', '*')
  $security_job_submission_protocol_acl  = hiera('security_job_submission_protocol_acl', '*')
  $security_task_umbilical_protocol_acl  = hiera('security_task_umbilical_protocol_acl', '*')
  $security_refresh_policy_protocol_acl  = hiera('security_refresh_policy_protocol_acl', '*')

  #_ DATA VOLUMES _#
  # NOTE: If data_volumes is empty, then this will assign it to '/var/lib/hadoop-0.20/cache'
  if !($data_volumes) { $data_volumes = '/var/lib/hadoop-0.20/cache' }

  #_ SORTED ARRAYS OF HASHES _#
  $proxyuser  = sort(keys($hadoop_proxyuser))
  $cap_queues = sort(keys($capacity_queues))
  $fair_pool  = sort(keys($fair_pool_queues))
  $fair_user  = sort(keys($fair_user_queues))

}
