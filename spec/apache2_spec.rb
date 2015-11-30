require 'chefspec'
require_relative 'spec_helper'

describe 'acsample::apache2' do

  	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

	it 'installs apache2' do
		expect(chef_run).to install_package('apache2')
    end
    
    it 'creates virtual hosts template with attributes' do
	    expect(chef_run).to create_template('/etc/apache2/sites-available/bears.conf').with(
	      source: 'custom.erb',
	      mode: '0644'
	    )

	    expect(chef_run).to_not create_template('/etc/apache2/sites-available/bears.conf').with(
	      source: 'virtual.erb',
	      mode: '0655'
	    )
  	end

  	it 'creates apache virtual host bears directory' do
    	expect(chef_run).to create_directory('/var/www/bears')
    	expect(chef_run).to_not create_directory('/var/www/_bears')
  	end

  	it 'creates html template for bears with attributes' do
	    expect(chef_run).to create_template('/var/www/bears/index.html').with(
	      source: 'index.html.erb',
	      mode: '0644'
	    )

	    expect(chef_run).to_not create_template('/var/www/bears/index.html').with(
	      source: 'virtual.erb',
	      mode: '0655'
	    )
  	end
  	

end