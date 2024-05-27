#!/bin/bash
PATH=/usr/sbin:/sbin:/usr/bin:/bin

# Detect distribution, for required module install later
# =======================================================

sendmail_instalado=false
bc_instalado=false
sysstat_instalado=false



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

if  $sendmail_instalado; then
       echo "el paquete sendmail sí que está instalado"
fi

if  $sysstat_instalado; then
       echo "el paquete sysstat sí que está instalado"
fi

if  $bc_instalado; then
       echo "el paquete bc sí que está instalado"
fi

if ! $sendmail_instalado; then
#       echo "sendmail no está instalado"
       read -p "¿Quieres instalar sendmail?y/n;" respuesta
       if [ $respuesta == "y" ]; then
          apt install sendmail
       fi
fi

if ! $bc_instalado; then
#       echo "bc no está instalado"
       read -p "¿Quieres instalar bc?y/n;" respuesta
       if [ $respuesta == "y" ]; then
          apt install bc
       fi
fi

if ! $sysstat_instalado; then
#       echo "sysstat no está instalado"
       read -p "¿Quieres instalar sysstat?y/n;" respuesta
       if [ $respuesta == "y" ]; then
          apt install sysstat
       fi
fi

