#!/bin/bash
if [[ `ip a show dev tun0` ]]; then
  vpnip=`ip a show dev tun0 | sed -rn 's/.*inet (.*)\/.*$/\1/p'`
  echo -n "$1 $vpnip "
fi