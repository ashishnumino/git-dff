NEWPROPERTIES=$(diff -y one.ini two.ini | tr -d '[:blank:]' | cat -n | grep '[<]' | sed 's/<$//' | sed 's/ //g')
while read -r line ; do
    lineno=$(echo $line | awk '{print $1}')
    prop=$(echo $line | awk '{print $2}')
    ex -s -c "${lineno}i|$prop" -c x two.ini
done <<< "$NEWPROPERTIES"