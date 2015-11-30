user "acsample-user" do
  supports :manage_home => true
  comment "Vivo Server User"
  system true
  manage_home true
  home "/home/acsample-user"
  shell "/bin/bash"
  password "$1$.k60EDjq$jvtiHWKkJc24E7miOK0n3." #acsample
end