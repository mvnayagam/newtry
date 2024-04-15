#!/bin/bash

n=`awk '/NIONS/{print $12}' OUTCAR`
o=`echo 4+$n | bc -l`
p=`echo 5+$n | bc -l`
echo -e "\n\e[1;36m======================================================================================================"
echo -e "\n\e[1;36m===> Working in \e[1;35;4m$(pwd)\e[24m \e[1;36mdir"
echo -e "\n\e[1;36m======================================================================================================"
if [[ $1 = 'Y' || $1 == 'y' ]] ; then
   echo -e " \e[33m" 
   grep -A $o -e "TOTAL-FORCE (eV/Angst)" OUTCAR
   echo -e " \e[0m" 

elif [[ $# -eq 0 ]] ; then
   echo -e " \e[33m" 
   grep -A $o -e "TOTAL-FORCE (eV/Angst)" OUTCAR | tail -n $p
   echo -e "\e[1;31m===> You can get forces for all ionic steps via \e[1;32;5m./get_driftforces.sh y \e[0m\n"

fi
