#!/bin/bash

count=1

while [ $count -le 6 ]
do 
    echo "count is $count"
    sleep 1
    ((count++))
done

while IFS read -r line; do 
    # process each line here
    echo "$line"
done < ./21.script.sh # input which file to read