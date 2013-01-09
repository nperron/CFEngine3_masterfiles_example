#!/bin/bash
set -e

CPU_TYPE=`grep "vendor" /proc/cpuinfo | cut -d ":" -f 2 | uniq | sed "s#\s*\(\w.*\)#\1#"`
NB_CPU_CORE=`grep "vendor" /proc/cpuinfo | wc -l`

echo "+${CPU_TYPE}"
echo "=nb_cpu_core=${NB_CPU_CORE}"
