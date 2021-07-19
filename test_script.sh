printf "%-15s%5s\n" "TIMESTAMP" "TEMP(degC)"
printf "%20s\n" "-----------------------"
while true
do
    temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
    timestamp=$(date)
    printf "%-15s ,temp: %5s 'C\n" "$timestamp" "$temp"
    sleep 1
done
