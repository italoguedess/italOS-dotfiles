#! /bin/sh

foreground='#f8f8f2'
# background='#282a36'
# comment='#6272a4'
cyan='#8be9fd'
green='#50fa7b'
orange='#ffb86c'
pink='#ff79c6'
purple='#bd93f9'
red='#ff5555'
yellow='#f1fa8c'

colors=( $foreground $cyan $cyan $green $green $orange $pink $purple $red $yellow )

randomColor(){
    # var="${colors[$1]}$"
    # gets the random number passed size
    numberSize="$(expr length $1)"

    # isolates the less significant digit for greater randomness
    randomVar="$(expr substr $1 $numberSize 1)"

    #returns the color
    echo ${colors[$randomVar]}
}


randomColor $SRANDOM
