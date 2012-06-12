maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libedit"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libbsd", ">= 0.0.1"
depends          "libncurses", ">= 0.0.1"
depends          "libtinfo", ">= 0.0.1"
