require 'spec_helper'

describe 'icu4c' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :luser      => 'testuser',
    }
  end

  it { should contain_package('icu4c').with_ensure('latest') }

  it do
    should contain_exec('brew link icu4c').with({
      :creates => '/opt/boxen/homebrew/bin/icu-config',
      :require => 'Package[icu4c]',
    })
  end
end
