#!/bin/bash

{ # This ensures the entire script is downloaded

  mysql_main() {
    debug "Install mysql $DISTRO $RELEASE"
    super -v+ $PACKAGE install mysql-server-8.0 mysql-client-8.0
  }

  mysql_main "${@}"

} # This ensures the entire script is downloaded
