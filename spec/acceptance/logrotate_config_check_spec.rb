require 'spec_helper_acceptance'

describe 'logrotate::config class' do
  describe 'checking presence of config files' do
    it 'should show that /etc/logrotate.conf is present' do
      shell("ls /etc/logrotate.conf", :acceptable_exit_codes => 0)
    end
    it 'should show that /etc/cron.daily/logrotate is present' do
      shell("ls /etc/cron.daily/logrotate", :acceptable_exit_codes => 0)
    end
  end
end

