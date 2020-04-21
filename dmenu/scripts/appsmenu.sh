#!/usr/bin/env bash

#dmenu_run -c -n appsMenu -l 6 -w 400  #-p " "
echo $PATH | tr ':' '\n' | uniq | sed 's#$#/#' | # List directories in $PATH
    xargs ls -lu --time-style=+%s |              # Add atime epoch
    awk '/^(-|l)/ { print $6, $7 }' |            # Only print timestamp and name
    sort -rn | cut -d ' ' -f 2 |
    dmenu -c -n appsMenu -l 6 -w 400 | # Pass through dmenu 
    ${SHELL:-"/bin/sh"} & # Execute the seleced command
