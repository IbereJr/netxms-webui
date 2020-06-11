#!/bin/sh

echo "server=$SERVER\nsessionTimeout=$SESSIONTIMEOUT\nenableAdvancedSettings=$ENABLEADVANCEDSETTINGS" >/usr/local/tomcat/lib/nxmc.properties

catalina.sh run
