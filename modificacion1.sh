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
          	echo "Sendmail sí que está instalado"
fi
if type "bc" > /dev/null; then
          	echo "bc sí que está instalado"
fi
if type "mpstat" > /dev/null; then
          	echo "sysstat sí que está instalado"
fi
