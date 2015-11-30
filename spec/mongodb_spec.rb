require 'chefspec'  
require_relative 'spec_helper'

describe 'acsample::mongodb' do  

  	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  	it 'installs mongodb-server' do
    	expect(chef_run).to install_package('mongodb-server')
  	end

  	it 'installs mongodb-clients' do
    	expect(chef_run).to install_package('mongodb-clients')
  	end

end