fn_dead() {
	echo "Bye Bye pal!!"
	sleep 3
	poweroff
}

[ $[ $RANDOM % 6 ] == 0 ] && fn_dead || echo "Let's talk some more"
