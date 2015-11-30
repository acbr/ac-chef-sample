directory "/home/acsample-user/samples" do
  owner "acsample-user"
  group "acsample-user"
  mode "0755"
  action :create
end

directory "/home/acsample-user/projects" do
  owner "acsample-user"
  group "acsample-user"
  mode "0755"
  action :create
end

#TodoMVC Project

git "/home/acsample-user/samples/todomvc" do
  repository "https://github.com/tastejs/todomvc.git"
  revision "master"
  action :sync
  timeout 1200
end

#Spring Mobile Samples

=begin
Spring Mobile is a framework that provides capabilities to detect the type of device making a request to your Spring 
web site and serve alternative views based on that device. Like all Spring projects, the real power of Spring Mobile 
is found in how easily it can be extended.
=end

git "/home/acsample-user/samples/spring-mobile-samples" do
  repository "https://github.com/spring-projects/spring-mobile-samples.git"
  revision "master"
  action :sync
  timeout 1200
end

git "/home/acsample-user/samples/spring-boot" do
  repository "https://github.com/spring-projects/spring-boot.git"
  revision "master"
  action :sync
  timeout 1200
end