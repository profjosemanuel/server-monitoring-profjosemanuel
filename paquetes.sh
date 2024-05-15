#!/bin/bash
PATH=/usr/sbin:/sbin:/usr/bin:/bin

# Detect distribution, for required module install later
# =======================================================


# Install missing modules
# ==========================
if ! type "sendmail" > /dev/null; then
          	echo "Installing Postfix for sendmail command..."
fi
if ! type "bc" > /dev/null; then
          	echo "Installing bc (an arbitrary precision calculator language)..."
fi
if ! type "mpstat" > /dev/null; then
          	echo "Installing sar, sadf, mpstat, iostat, pidstat and sa tools..."
fi
