require 'spec_helper_acceptance'

describe 'logrotate module' do
  describe 'apply logrotate module' do
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'logrotate': }
      EOS
  
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
  
  describe 'logrotate::install class' do
    describe package('logrotate') do
      it { should be_installed }
    end
  end
  
  describe 'logrotate::config class' do
    describe file('/etc/logrotate.conf') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '644' }
    end
    describe file('/etc/cron.daily/logrotate') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '755' }
    end
  end
  
end
  
