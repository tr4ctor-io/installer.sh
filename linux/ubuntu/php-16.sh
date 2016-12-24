#!/bin/bash

{ # This ensures the entire script is downloaded

  php_main() {
    debug "Install php $DISTRO $RELEASE"
    super -v+ $PACKAGE install php7.0 php7.0-dev php7.0-mcrypt php7.0-common php7.0-curl php7.0-cli php7.0-gd php7.0-json php7.0-xml libapache2-mod-php7.0 php7.0-zip php-pear build-essential #build-dep
    super -v+ a2enmod rewrite
  }

  php_main "${@}"

} # This ensures the entire script is downloaded