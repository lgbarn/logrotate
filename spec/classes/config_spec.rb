require 'spec_helper'
describe 'logrotate::config' do

  context 'with defaults for all parameters' do
    it { should contain_class('logrotate::config') }
    it do
      should contain_file('/etc/cron.daily/logrotate').with(
        'ensure' => 'file',
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0755',
        'source' => 'puppet:///modules/logrotate/logrotate',
    ) end
    it do
      should contain_file('/etc/logrotate.conf').with(
        'ensure' => 'file',
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0644',
        'source' => 'puppet:///modules/logrotate/logrotate.conf',
    ) end
  end
end
#-rwxr-xr-x. 1 root root 196 Jul 18  2013 /etc/cron.daily/logrotate
#-rw-r--r--. 1 root root 662 Aug 29  2007 /etc/logrotate.conf
