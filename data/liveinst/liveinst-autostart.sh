#!/bin/bash
# Automatically start liveinst if a kickstart boot option was provided

KS=0

for opt in `cat /proc/cmdline`; do
    case $opt in
    ks=*|kickstart=*|inst.ks=*|inst.kickstart=*)
	KS=1 ;;
    esac
done

if [ "$KS" -eq 1 ]; then
    exec /usr/bin/liveinst
fi

exit 0
