#!/bin/bash
ipython notebook > /tmp/notebook.log 2>&1 &
/tmp/.runconfig.sh && service apache2 stop && /usr/sbin/apache2ctl -D FOREGROUND
