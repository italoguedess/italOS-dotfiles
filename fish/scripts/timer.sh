#! /bin/sh
stdTime='1h 30m 1s'
if [ $0 != 0 ]; then
    time=$1
else
    time=$stdTime
fi
echo $time

# termdown --exec-cmd "if [ '{0}' == 1 ]; then celluloid ~/Downloads/madder-red-town.mp3; fi" $time
