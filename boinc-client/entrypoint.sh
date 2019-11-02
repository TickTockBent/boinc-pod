#!/bin/bash

/etc/init.d/boinc-client start
sleep 5
/usr/bin/boinccmd --project_attach ${boincurl} ${boinckey}
tail -f /var/lib/boinc-client/std*.txt