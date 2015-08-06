require 'spec_helper'
describe 'git_custom' do

  context 'with defaults for all parameters' do
    it { should contain_class('git_custom') }
  end
end
