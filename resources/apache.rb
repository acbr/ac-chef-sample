actions :prepare, :cleanup
default_action :prepare

attribute :name, :kind_of => String, :name_attribute => true
attribute :sites, :kind_of => Hash
	
