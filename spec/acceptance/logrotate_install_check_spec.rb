require 'spec_helper_acceptance'

describe 'logrotate::install class' do
  describe 'checking presence of logrotate package' do
    it 'should show that it is present' do
      shell("rpm -q logrotate", :acceptable_exit_codes => 0)
    end
  end
end

