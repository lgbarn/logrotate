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
class logrotate (
  $service_manage             = $logrotate::params::service_manage,
  $service_ensure             = $logrotate::params::service_ensure,
  $service_enable             = $logrotate::params::service_enable,
  $service_name               = $logrotate::params::service_name,
  $service_hasstatus          = $logrotate::params::service_hasstatus,
  $service_hasrestart         = $logrotate::params::service_hasrestart,
  $package_name               = $logrotate::params::package_name,
  $package_ensure             = $logrotate::params::package_ensure,
  $logrotate_cron_file        = $logrotate::params::logrotate_cron_file,
  $logrotate_cron_file_ensure = $logrotate::params::logrotate_cron_file_ensure,
  $logrotate_cron_file_source = $logrotate::params::logrotate_cron_file_source,
  $logrotate_cron_file_owner  = $logrotate::params::logrotate_cron_file_owner,
  $logrotate_cron_file_group  = $logrotate::params::logrotate_cron_file_group,
  $logrotate_cron_file_mode   = $logrotate::params::logrotate_cron_file_mode,
  $logrotate_conf_file_ensure = $logrotate::params::logrotate_conf_file_ensure,
  $logrotate_conf_file_source = $logrotate::params::logrotate_conf_file_source,
  $logrotate_conf_file_owner  = $logrotate::params::logrotate_conf_file_owner,
  $logrotate_conf_file_group  = $logrotate::params::logrotate_conf_file_group,
  $logrotate_conf_file_mode   = $logrotate::params::logrotate_conf_file_mode,

) inherits logrotate::params {

  include 'logrotate::install'
  include 'logrotate::config'
  include 'logrotate::service'


}
