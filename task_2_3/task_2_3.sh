random_number=$(( RANDOM % 11))
chosen_number=0
trys=0
while [ $random_number -ne $chosen_number ]
do
    read -p "Guess the number between 0 and 10: " chosen_number
    trys=$(( trys + 1 ))
    if [ $chosen_number -lt $random_number ]
    then
        echo "Too low try again!"
    elif [ $chosen_number -gt $random_number ]
    then
        echo "Too high try again!"
    else
        echo "Congratulations! You guessed the right number!"
        echo "Number of tries: $trys"
    fi
done