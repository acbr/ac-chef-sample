# define 	:download_extract_and_link,
# 		:target_dir => '/opt',
# 		:compress_char => 'j',
# 		:file_link_source => '',
# 		:file_link_target => '',
# 		:link_url => '' do

# 	tar_extract "#{params[:link_url]}" do
#       target_dir "#{params[:target_dir]}"
#       compress_char "#{params[:compress_char]}"
#     end
        
#     execute "ln -s '#{params[:file_link_source]}' #{params[:file_link_target]}" do
#       not_if do
#         ::File.exist?("#{parms[:file_link_target]}")
#       end
#     end	
	
# end