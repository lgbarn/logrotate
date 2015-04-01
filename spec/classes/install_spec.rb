require 'spec_helper'
describe 'logrotate::install' do

  context 'with defaults for all parameters' do
    it { should contain_class('logrotate::install') }
    it do
      should contain_package('logrotate').with(
        'ensure' => 'installed',
    ) end
  end
end
