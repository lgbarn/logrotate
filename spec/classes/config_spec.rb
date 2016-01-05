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
        'source' => 'puppet:///modules/logrotate/logrotate.cron',
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
