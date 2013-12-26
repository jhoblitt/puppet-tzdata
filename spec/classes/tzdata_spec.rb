require 'spec_helper'

describe 'tzdata', :type => :class do
  let(:facts) { {:osfamily=> 'RedHat'} }

  describe 'default params' do
    it do
      should contain_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'latest' })
    end
  end

  describe 'with ensure => present' do
    let(:params) { {:ensure => 'present'} }

    it do
      should contain_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'present' })
    end
  end

  describe 'with ensure => latest' do
    let(:params) { {:ensure => 'latest'} }

    it do
      should contain_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'latest' })
    end
  end

  describe 'with ensure => absent' do
    let(:params) { {:ensure => 'absent'} }

    it do
      should contain_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'absent' })
    end
  end

  describe 'with ensure => foo' do
    let(:params) { {:ensure => 'foo'} }
 
    it do
      expect {
        should contain_class('tzdata') 
      }.to raise_error(Puppet::Error, /^validate_re\(\)/)
    end
  end

  describe 'osfamily Gentoo' do
    let(:facts) { {:osfamily=> 'Gentoo'} }

    it { should contain_class('tzdata') }
  end

  describe 'unsupported osfamily' do
    let(:facts) { {:osfamily=> 'Debian'} }
 
    it do
      expect {
        should contain_class('tzdata') 
      }.to raise_error(Puppet::Error, /^Module tzdata is not supported on/)
    end
  end

end

