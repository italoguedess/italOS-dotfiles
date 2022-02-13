#! /bin/sh

# file in which the time will be saved
file=~/.config/scripts/bash/timer-time.txt
song=~/Downloads/madder-red-town.mp3



iterate(){
    prevVal="$(sed -n '1p' $file)"
    pause="$(sed -n '2p' $file)"
    newVal="$(expr $prevVal - 1)"

    if [ $newVal -eq 0 ]; then
        sed -i "s/$prevVal/$newVal/g" $file
        end
    fi

    if [ $pause = 'false' ]; then
        sed -i "s/$prevVal/$newVal/g" $file
        return $newVal
    else
        return -1
    fi

}

start2(){
    echo $1 | tee $file
    echo false | tee -a $file
    return $1
}

start(){
    	prevVal="$(sed -n '1p' $file)"
	pause="$(sed -n '2p' $file)"
	sed -i "s/$prevVal/$1/g" $file
	sed -i "s/$pause/false/g" $file
	return $1
}

toggleTrueFalse(){
    if [ $1 = 'true' ];then
        echo false
    else
        echo true
    fi

}

togglePause(){
    prevVal="$(sed -n '2p' $file)"
    newVal="$(toggleTrueFalse $prevVal)"
    sed -i "s/$prevVal/$newVal/g" $file
    return -1
}


end(){
    togglePause
    mocp --server
    mocp -p $song
}

$1 $2
echo $?
# echo $1 $2
# if [ $# -gt 0 ]; then
#     execCMD $1 $2
#     echo $1 $2
#     # echo "$(sed -n '1p' $filepath)"
# fi




# if [ $# -gt 0 ];then
#     if [ $i -lt 90 ]; then
#         i="$(expr $i + 1)"
#         echo $i | tee $filepath
#         echo $i
#     else
#         echo timer
#     fi


#     if [ $1 = '--start' ]; then
#         echo "" | tee $filepath
#     fi







# calculates the time in which the countdown ends
# endTime () {
#     # gets current hour
#     currentHour="$(date +'%H' )"
#     currentMin="$(date +'%M')"
#     # if currentMin + 30 >= 60
#     if [ `expr $currentMin + 30` -ge 60 ]; then
#         endHour="$(expr $currentHour + 1)"
#         # endMin = currentMin + 30 but endMin <= 60
#         endMin="$(expr 60 - $currentMin)"
#         endMin="$(expr 30 - $min)"
#     # if currentMin + 30 <= 60
#     else
#         endHour="$(expr $currentHour + 1)"
#         endMin="$(expr $currentMin + 30)"
#     fi

#     # saves the time in filepath
#     echo $endHour | tee $filepath
#     echo $endMin | tee -a $filepath


# }

# remainingTime () {
#     # gets saved time
#     savedHour="$(sed -n '1p' $filepath)"
#     savedMin="$(sed -n '2p' $filepath)"
#     # remHour = savedHour - currentHour
#     remHours="$(expr $savedHour - $(date +'%H'))"
#     # remMin = (savedMin + 60) - currentMin
#     [ $savedMin -lt 30 ] && \
#         remMin="$(expr $(expr $savedMin + 60) - $(date +'%M'))" || \
#             remMin="$(expr $savedMin - $(date +'%M'))"
#     [ $savedHour -eq 25 ] && \
#         echo timer || \
#             echo "$remHours:$remMin"
#     if [ $remHours -eq 0 ] && [ $remMin -eq 0 ]; then
#         mocp --server
#         mocp -p ~/Downloads/madder-red-towm.mp3
#         # rm 
#     fi

# }
# remainingTime2 () {
#     # gets saved time
#     savedHour="$(sed -n '1p' $filepath)"
#     savedMin="$(sed -n '2p' $filepath)"
#     # remHour = savedHour - currentHour
#     remHours="$(expr $savedHour - $(date +'%H'))"
#     # remMin = (savedMin + 60) - currentMin
#     [ $remHours -eq 1 ] && \
#         remMin="$(expr $(expr $savedMin - $(date +'%M')) + 60)"

#     # if remHours = 1 remMin = remMin + 60
#     [ $remMin -ge 60 ] && \
#         echo "01:0$(expr $remMin - 60)" || \
#             echo "00:$(printf %02.f $remMin)"
#     # echo "$remHours:$remMin:$(date +'%S')"
#     if [ $remHours -eq 0 ] && [ $remMin -eq 0 ]; then
#         mocp --server
#         mocp -p ~/Downloads/madder-red-towm.mp3
#         # rm 
#     fi

# }

# # addTime
# # min="$(grep -n 2 .config/scripts/bash/timer-time.txt)"
# # endTime
# # remainingTime
# remainingTime
# # addTime
# # echo "$hour:$min"
