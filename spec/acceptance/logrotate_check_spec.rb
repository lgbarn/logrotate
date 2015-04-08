require 'spec_helper_acceptance'

describe 'apply logrotate module' do
  it 'should work with no errors' do
    pp = <<-EOS
    class { 'logrotate': }
    EOS

    apply_manifest(pp, :catch_failures => true)
    apply_manifest(pp, :catch_changes => true)
  end
end


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

describe 'logrotate::install class' do
  describe 'checking presence of logrotate package' do
    it 'should show that it is present' do
      shell("rpm -q logrotate", :acceptable_exit_codes => 0)
    end
  end
end

