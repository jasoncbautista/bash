#! /env/bin/env bash









# Source
# http://www.linuxquestions.org/questions/programming-9/bash-progress-basr-or-animation-565730/

spinner(){
    PROC=$1
    while [ -d /proc/$PROC ];do
        echo -n '/^H' ; sleep 0.05
        echo -n '-^H' ; sleep 0.05
        echo -n '\^H' ; sleep 0.05
        echo -n '|^H' ; sleep 0.05
    done
    return 0
}

#du /usr >/dev/null 2>&1 &
# spinner $(pidof du)



rotdash2(){
    p=$1
    while [ -d /proc/$p ]
    do
        echo -en '\E[32;40m/' ; sleep .05
        echo -en '\E[32;40m-' ; sleep .05
        echo -en '\E[32;40m\' ; sleep .05
        echo -en '\E[32;40m|' ; sleep .05
        echo -en '\E[32;42mS' ; tput sgr0 ; sleep .2
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

sleep 10 &

last_pid=$1
echo "$last_pid"
rotdash2 $!

