#!/bin/sh

echo "server=$NETXMS_SERVER\nsessionTimeout=$SESSIONTIMEOUT\nenableAdvancedSettings=$ENABLEADVANCEDSETTINGS" >/usr/local/tomcat/lib/nxmc.properties

catalina.sh run
