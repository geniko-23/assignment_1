counter=0
for i in $(seq 1 $#)
do
    echo "${!i}${counter}"
    counter=$((counter + 5))    
done

# Test with: ./task_2_1.sh apple microsoft linux tomhanks