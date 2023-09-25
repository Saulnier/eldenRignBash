#!/bin/bash
death="You died. The Fallen Leaves Tell A Story."

echo "Welcome Tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class


case $class in

		1)
			type="Samarai"
			hp=10
			attack=20
			;;
		2)
			type="Prisoner"
			hp=30
			attack=8
			;;
		3)
			type="Prophet"
			hp=20
			attack=12
			;;
esac

echo "You have chosen $type class. Your HP is $hp and your attack is $attack."

#First beast battle

beast=$(( $RANDOM  % 2 ))


echo "The first fight approaches. Prepare for battle aginst a Soldier of Godrick. Pick a number bewtween 0 - 1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "Soldier VANQUISHED!! Guided by grace"
	echo "Your number: $tarnished, Soldier of Godrick: $beast. NICE!"
else
	echo $death
	echo "Your number: $tarnished, Soldier of Godrick: $beast. Sorry"
	exit 1
fi

sleep 1


echo "Boss battle. Get scared. Time to fight Morgott, grace shall guide you. Pick a number between 0 - 9 (0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == tarnished || $tarnished == "grace" ]]; then
	echo "Beast VANQUISHED!!! Congrats fellow tarnished"
	echo "Your number: $tarnished, Morgott: $beast. NICE!"

#elif [[ $USER == "root" ]]; then
	#echo "Hey, root always wins. You vanquished the beast."

else
	echo $death
	echo "Your number: $tarnished, Morgott: $beast. Sorry"
	exit 1
fi

sleep 1

echo "Optional SKIP Quest. Fight Malenia, Blade of Miquella. Pick a number between 0 - 25"

read tarnished

malenia=$(( $RANDOM % 25 ))

if [[ $malenia == tarnished ]]; then
	echo "King of the Elden Rings ♛. Malenia VANQUISHED!!!"
	echo "Your number: $tarnished, Malenia: $malenia . NICE!"
elif [[ $tarnished == "SKIP" ]]; then
	echo "I am Malenia, Blade of Miquella, and I have never known defeat." 

else
	echo "You Died. The Fallen Leaves Tell A Story."
	echo "Your number: $tarnished, Malenia: $malenia. Sorry"
	exit 1
fi

sleep 1

echo "Time to be become the Elden King! Fight, the Elden Beast. Deliver To You What Is Yours. Pick a number between 0 - 40"

read tarnished

eldenBeast=$(( $RANDOM % 40 ))

if [[ $eldenBeast == tarnished || $tarnished == "try fingers but hole" ]]; then
	echo "King of the Elden Rings ♛. Sit on your throne King!!!"
	echo "Your number: $tarnished, Elden Beast: $malenia . NICE!"

else
	echo $death
	echo "Your number: $tarnished, Elden Beast: $eldenBeast. Sorry"
fi