while true; do
	echo \
		$(free --mebi | awk 'NR==2 { printf "%d/%d MiB (%.2f%%)", $3, $2, ($3/$2)*100 }') \
		'|' \
		$(echo $(cat /sys/class/power_supply/BAT0/energy_now) $(cat /sys/class/power_supply/BAT0/energy_full) \
		| awk '{ printf "%.2f%%", $1/$2*100 }' ) \
		'('$(cat /sys/class/power_supply/BAT0/status)')' \
		'|' \
		$(date "+%F %R")
	sleep 1
done
