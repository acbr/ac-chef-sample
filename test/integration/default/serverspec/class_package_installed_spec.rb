require "serverspec"

set :backend, :exec

describe user("acsample-user") do
	it { should exist }
	it { should have_home_directory "/home/acsample-user" }
	it { should have_login_shell "/bin/bash" }
end

describe file("/home/acsample-user/samples") do
	it { should be_directory }
end

describe file("/home/acsample-user/projects") do
	it { should be_directory }
end

describe file("/home/acsample-user/samples/todomvc/.git") do
	it { should be_directory }
end

describe file("/home/acsample-user/samples/spring-mobile-samples/.git") do
	it { should be_directory }
end

describe file("/home/acsample-user/samples/spring-boot/.git") do
	it { should be_directory }
end

describe service("mysql-acsample") do
  it { should be_running }
end

describe service("mongod") do
  it { should be_running }
end

describe service("apache2") do
  it { should be_running }
end

describe file("/etc/apache2/sites-available/clowns.conf") do
	it { should exist }
end

describe file("/etc/apache2/sites-available/clowns.conf") do
	it { should be_file }
end

describe file("/etc/apache2/sites-available/bears.conf") do
	it { should exist }
end

describe file("/etc/apache2/sites-available/bears.conf") do
	it { should be_file }
end

describe file("/etc/apache2/sites-enabled/clowns.conf") do
	it { should exist }
end

describe file("/etc/apache2/sites-enabled/clowns.conf") do
	it { should be_symlink }
end

describe file("/etc/apache2/sites-enabled/bears.conf") do
	it { should exist }
end

describe file("/etc/apache2/sites-enabled/bears.conf") do
	it { should be_symlink }
end