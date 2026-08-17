#!/bin/bash
if [ $# -eq 0 ]
then
    echo "========================================"
    echo "       Linux System Information"
    echo "========================================"
    echo ""
    echo "A simple Bash tool for displaying"
    echo "basic Linux system information."
    echo ""
    echo "Available options:"
    echo ""
    echo "  disk       Show disk usage"
    echo "  memory     Show memory usage"
    echo "  uptime     Show system uptime"
    echo "  kernel     Show kernel version"
    echo "  os         Show operating system"
    echo "  user       Show current user"
    echo "  hostname   Show hostname"
    echo ""
    echo "Usage:"
    echo "  bash system-info.sh [option]"
    echo ""
    echo "========================================"
    echo "            made by sayeh21❤️           "
    echo "========================================"
    exit 0
fi

if [ "$1" = "disk" ]
  then
     echo "Disk Usage:"
     df -h /

elif [ "$1" = "memory" ]
   then
     echo "Memory:"
     free -h

elif [ "$1" = "uptime" ]
   then
     echo "Uptime:"
     uptime -p

elif [ "$1" = "kernel" ]
   then
     echo "Kernel:"
     uname -r

elif [ "$1" = "os" ]
   then
     cat /etc/os-release | grep PRETTY_NAME

elif [ "$1" = "user" ]
   then
     user=$(whoami)

     echo "user:$user"

elif [ "$1" = "hostname" ]
   then
     Hostname=$(hostname)

     echo "Hostname:$Hostname"

else 
    echo "Invalid Option"
fi
