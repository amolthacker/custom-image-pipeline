#!/bin/bash

STARTUP_PROFILE="/etc/rc.d/rc.local"

cat >> ${STARTUP_PROFILE} << EOF
runuser -l cdp -c 'go run /home/cdp/compute/valengine.go > /var/log/cdp/valengine.log 2>&1 &'
EOF

chmod +x ${STARTUP_PROFILE}
