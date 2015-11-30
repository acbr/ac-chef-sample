require 'chefspec'  
require_relative 'spec_helper'

describe 'acsample::default' do  

  	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    before do
    	stub_command("/usr/local/bin/npm -v 2>&1 | grep '1.3.5'").and_return(false)
  	end

  	it 'includes the nodejs::npm recipe' do
    	expect(chef_run).to include_recipe('nodejs::npm')
  	end

end
