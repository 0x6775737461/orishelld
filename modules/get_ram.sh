#!/usr/bin/env bash

get_ram(){
   memtotal=$(awk '/MemTotal/ { print $2 }' /proc/meminfo)
   memtotal=$(bc -l <<< "${memtotal}/(1024^2)")
   memtotal=${memtotal:0:4}" GiB"
}
