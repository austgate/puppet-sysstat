require 'spec_helper'

describe 'sysstat::params', :type => :class do
  describe 'for osfamily RedHat' do
    let :facts do
      {
        :osfamily => 'RedHat',
      }
    end

    it { should include_class('sysstat::params') }
  end

  describe 'for osfamily Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should include_class('sysstat::params') }
  end
  
  describe 'for osfamily Ubuntu' do
    let :facts do
      {
        :osfamily => 'Ubuntu',
      }
    end

    it { should include_class('sysstat::params') }
  end
  
  describe 'unsupported osfamily' do
    let :facts do 
      {
        :osfamily        => 'Fedora',
        :operatingsystem => 'Fedora',
      }
    end
  
    it 'should fail' do
      expect { should include_class('sysstat::params') }.
        to raise_error(Puppet::Error, /not supported on Debian/)
    end
  end

end
