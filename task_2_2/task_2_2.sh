function volume_of_cuboid {
    height=$1
    width=$2
    length=$3

    volume_result=$((length*width*height))
    echo "The volume of the cuboid is: $volume_result"
}
# hard coded:
echo "Function called from inside the script with my own choosing:"
echo "height = 2, width = 3, length = 4"
volume_of_cuboid 2 3 4 #; echo "$volume_result"

# Not hard coded in the script:
read -p "Enter height: " h
read -p "Enter width: " w
read -p "Enter length: " l
echo "Function called from inside the script with your own choosing of the variables:"
volume_of_cuboid $h $w $l