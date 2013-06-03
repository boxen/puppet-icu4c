require 'spec_helper'

describe 'icu4c' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :luser      => 'testuser',
    }
  end

  it { should contain_package('icu4c').with_ensure('latest') }
end
