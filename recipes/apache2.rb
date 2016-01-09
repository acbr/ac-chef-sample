# acsample_apache "vivo" do
# 	action :prepare
# 	sites node["acsample"]["sites"]
# end

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

execute "rm -rf /etc/apache2/sites-enabled/000-default" do
	only_if do
		::File.exist?("/etc/apache2/sites-enabled/000-default")
	end
	notifies :restart, "service[apache2]"
end

execute "ln -s /etc/apache2/mods-available/vhost_alias.load /etc/apache2/mods-enabled/vhost_alias.load" do
	not_if do
		::File.exist?("/etc/apache2/mods-enabled/vhost_alias.load")
	end
	notifies :restart, "service[apache2]"
end

node["acsample"]["sites"].each do | site_name, site_data |
	document_root = "/var/www/#{site_name}"

	directory document_root do
	  mode "0755"
	  recursive true
	  action :create
	end

	# Add a template for Apache virtual host configuration
	template "/etc/apache2/sites-available/#{site_name}.conf" do
	  source "custom.erb"
	  mode "0644"
	  variables(
	  	:document_root => document_root,
	  	:port => site_data["port"]
  		)
	end

	execute "ln -s /etc/apache2/sites-available/#{site_name}.conf /etc/apache2/sites-enabled/#{site_name}.conf" do
		not_if do
			::File.exist?("/etc/apache2/sites-enabled/#{site_name}.conf")
		end
		notifies :restart, "service[apache2]"
	end

	template "#{document_root}/index.html" do
	  source "index.html.erb"
	  mode "0644"
	  # variables(
	  # 	:site_name => site_name,
	  # 	:port => site_data[:port]
	  # 	)
	end	
end