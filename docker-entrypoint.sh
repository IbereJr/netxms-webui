#!/bin/sh

#echo "server=$NETXMS_SERVER\nsessionTimeout=$SESSIONTIMEOUT\nenableAdvancedSettings=$ENABLEADVANCEDSETTINGS" >/usr/local/tomcat/lib/nxmc.properties
echo "server=$NETXMS_SERVER\nenableAdvancedSettings=$ENABLEADVANCEDSETTINGS" >/usr/local/tomcat/lib/nxmc.properties

catalina.sh run
