name             "acsample"  
maintainer       "Joao Vinagre"  
maintainer_email "joao.lima@vilivesoft.com"  
license          "All rights reserved"  
description      "Installs/Configures acsample"  
# long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))  
version          "0.1.0"

depends 'poise', '~> 2.4.0'
depends "apt", "~> 2.8.2"
depends "nodejs"
depends "runit", "~> 1.4.0"
depends "phantomjs",  "~> 1.0.3"
depends "mysql", "~> 6.0"
depends "tar", "~> 0.7.0"