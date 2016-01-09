require 'poise'
require 'chef/resource'
require 'chef/provider'

module ExtractAndLinkX
  class Resource < Chef::Resource
    include Poise
    provides(:extract_and_link_x)
    actions(:install)

    attribute(:target_dir, kind_of: String)
    attribute(:compress_char, kind_of: String)
    attribute(:file_link_source, kind_of: String)
    attribute(:file_link_target, kind_of: String)
    attribute(:link_url, kind_of: String)
    # Other attribute definitions.
  end

  class Provider < Chef::Provider
    include Poise
    provides(:extract_and_link_x)

    def action_install
      notifying_block do

        tar_extract "#{new_resource.link_url}" do
          target_dir "#{new_resource.target_dir}"
          compress_char "#{new_resource.compress_char}"
        end
        
        execute "ln -s #{new_resource.file_link_source} #{new_resource.file_link_target}" do
          not_if do
            ::File.exist?("#{new_resource.file_link_target}")
          end
        end

      end
    end
  end
end