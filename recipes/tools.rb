# tar_extract "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2" do
# 	target_dir "/opt"
# 	compress_char "j"
# end

# bash "install_sublime" do
# 	user "root"
# 	code <<-EOH
# 	ln -s "/opt/Sublime Text 2/sublime_text" /usr/bin/subl
# 	EOH
# end

# execute "ln -s '/opt/Sublime Text 2/sublime_text' /usr/bin/subl" do
# 	not_if do
# 		File.exist?("/usr/bin/subl")
# 	end
# end

extract_and_link_x "sublime" do
	target_dir "/opt"
	compress_char "j"
	file_link_source "/opt/Sublime Text 2/sublime_text"
	file_link_target "/usr/bin/subl"
	link_url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2"
end

package "chromium-browser" do
  action :install
end