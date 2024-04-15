#!/bin/bash

echo -e "\n\x1b[1;32m                  ===> Hey you can give no of step from previous run as first argument like \x1b[1;3;35m . getTE.sh \"some_numer\" \x1b[0m\n"


if [ -f oldt300 ]
then
   echo " Fool"
   
   num=`tail -n 1 oldt300  | awk '{print $1}'`
   
   echo -e "\x1b[1;32m                  ===> The script is called as  \x1b[1;3;35m . getTE.sh $num \x1b[0m\n"
   
   grep T OSZICAR | awk '{print $1+"'$num'" "\t"$3"\t"$7"\t"$9+$11}' > t300
   
   cat oldt300 t300 > x5xx
   mv x5xx t300

else
    
    echo "Muthu"
    
    echo -e "\x1b[1;32m                  ===> The script is called as  \x1b[1;3;35m . getTE.sh $1 \x1b[0m\n"
    
    grep T OSZICAR | awk '{print $1+"'$1'""\t"$3"\t"$7"\t"$9+$11}' > t300
fi

#if [ -z "$1" ]
# if [ $# -ne 0 ] 
# then
#     echo "Muthu"
#     echo -e "\x1b[1;32m                  ===> The script is called as  \x1b[1;3;35m . getTE.sh $1 \x1b[0m\n"
#     grep T OSZICAR | awk '{print $1+"'$1'""\t"$3"\t"$7"\t"$9+$11}' > t300
# else
#     echo -e "\x1b[1;32m                  ===> The script is called as  \x1b[1;3;35m . getTE.sh $num \x1b[0m\n"
#     grep T OSZICAR | awk '{print $1+"'$num'" "\t"$3"\t"$7"\t"$9+$11}' > t300
# fi
