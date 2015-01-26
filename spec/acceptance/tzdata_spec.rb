require 'spec_helper_acceptance'

describe 'tzdata class' do
  describe 'running puppet code' do
    pp = <<-EOS
      include ::tzdata
    EOS

    it 'applies the manifest twice with no stderr' do
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
end
