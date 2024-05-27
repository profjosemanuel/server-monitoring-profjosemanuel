#!/bin/bash
PATH=/usr/sbin:/sbin:/usr/bin:/bin

# Detect distribution, for required module install later
# =======================================================

sendmail_instalado=false
bc_instalado=false
sysstat_instaldo=false



# Install missing modules
# ==========================
if type "sendmail" > /dev/null; then
          	sendmail_instalado=true
fi
if type "bc" > /dev/null; then
          	bc_instalado=true
fi
if type "mpstat" > /dev/null; then
          	sysstat_instalado=true
fi
