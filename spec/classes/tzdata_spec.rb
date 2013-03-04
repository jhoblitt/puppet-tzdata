require 'spec_helper'

describe 'tzdata' do
  let(:title) { 'redhat' }
  let(:facts) { {:osfamily=> 'RedHat'} }

  context 'default params' do
    it do
      should include_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'latest' })
    end
  end

  context 'with ensure => present' do
    let(:params) { {:ensure => 'present'} }

    it do
      should include_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'present' })
    end
  end

  context 'with ensure => latest' do
    let(:params) { {:ensure => 'latest'} }

    it do
      should include_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'latest' })
    end
  end

  context 'with ensure => absent' do
    let(:params) { {:ensure => 'absent'} }

    it do
      should include_class('tzdata')
      should contain_package('tzdata').with({ 'ensure' => 'absent' })
    end
  end

  # invalid arg param
  context 'with ensure => foo' do
    let(:params) { {:ensure => 'foo'} }
 
    it do
      expect {
        should include_class('tzdata') 
      }.to raise_error(Puppet::Error, /^validate_re\(\)/)
    end
  end

  # fail on unsupported osfamily
  context 'unsupported osfamily' do
    let(:facts) { {:osfamily=> 'Debian'} }
 
    it do
      expect {
        should include_class('tzdata') 
      }.to raise_error(Puppet::Error, /^Module tzdata is not supported on/)
    end
  end

end

