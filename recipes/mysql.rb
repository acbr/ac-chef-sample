mysql_service "acsample" do
  port "3306"
  version "5.5"
  initial_root_password "1stAccess"
  action [:create, :start]
end