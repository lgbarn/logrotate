# == Class: logrotate
#
# Full description of class logrotate here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'logrotate':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class logrotate::params {

  $service_manage          = true
  $service_ensure          = "running"
  $service_enable          = true
  $service_name            = "logrotate"
  $service_hasstatus       = true
  $service_hasrestart      = true
  $package_name            = "logrotate"
  $package_ensure          = "installed"
  $logrotate_cron_file             = '/etc/cron.daily/logrotate'
  $logrotate_cron_file_ensure      = file
  $logrotate_cron_file_source      = 'puppet:///modules/logrotate/logrotate.cron'
  $logrotate_cron_file_owner       = "root"
  $logrotate_cron_file_group       = "root"
  $logrotate_cron_file_mode        = "0755"
  $logrotate_conf_file             = '/etc/logrotate.conf'
  $logrotate_conf_file_ensure = file
  $logrotate_conf_file_source = 'puppet:///modules/logrotate/logrotate.conf'
  $logrotate_conf_file_owner  = "root"
  $logrotate_conf_file_group  = "root"
  $logrotate_conf_file_mode   = "0644"




}
