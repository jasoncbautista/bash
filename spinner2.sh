#!/bin/bash
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
