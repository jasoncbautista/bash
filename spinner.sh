#! /env/bin/env bash









# Source
# http://www.linuxquestions.org/questions/programming-9/bash-progress-basr-or-animation-565730/

spinner(){
    PROC=$1
    while [ -d /proc/$PROC ];do
        echo -n '/' ; sleep 0.05
        echo -n '-' ; sleep 0.05
        echo -n '\' ; sleep 0.05
        echo -n '|' ; sleep 0.05
    done
    return 0
}

du /usr >/dev/null 2>&1 &
spinner $(pidof du)



rotdash2(){
    p=$1
    echo "$p"
    while [ -d /proc/$p ]
    do
	echo -n '/' ; sleep 0.07
	echo -n '*' ; sleep 0.07
	echo -n '\' ; sleep 0.07
	echo -n '|' ; sleep 0.07
    done
}


function spinner {
    PROC=$1
    while [ -d /proc/$PROC ];do
    echo -n '' ; sleep 0.05
    echo -n '' ; sleep 0.05
    echo -n '' ; sleep 0.05
    echo -n '' ; sleep 0.05
    done
    return 0
}

#sleep 10 &
#rotdash2 $!

