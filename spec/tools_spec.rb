require 'chefspec'  
require_relative 'spec_helper'

describe 'acsample::tools' do  

  	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  	it 'installs chromium-browser' do
    	expect(chef_run).to install_package('chromium-browser')
  	end

end
