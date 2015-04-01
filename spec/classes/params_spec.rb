require 'spec_helper'
describe 'logrotate::params' do

  context 'with defaults for all parameters' do
    it { should contain_class('logrotate::params') }
  end
end
