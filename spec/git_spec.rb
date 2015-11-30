require 'chefspec'  
require_relative 'spec_helper'

describe 'acsample::git' do  

  	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  	it 'installs git' do
    	expect(chef_run).to install_package('git')
  	end


end
