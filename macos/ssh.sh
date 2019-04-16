ip="#"
connect=false

while [[ $connect==false ]]
do
ping $ip
#initial="$( | head -c 10)"
#echo $initial
done
