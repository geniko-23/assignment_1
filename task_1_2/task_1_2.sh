# 1
document_value_1="magician
who have lost
their magic ?"
# 2
document_value_2="Ian"
# 3
picture_data=" P1
# A very tiny picture
6 10
1 0 0 0 0 1
0 0 0 0 0 0
0 1 0 0 1 0
0 0 0 0 0 0
0 0 1 1 0 0
0 0 0 0 0 0
0 1 0 0 1 0
0 1 1 1 1 0
0 0 0 0 0 0
1 0 0 0 0 1 "
# 4
if [ $# -ne 1 ] # the amount of arguments ="$#"
then # Check if the number of arguments is not equal to 1
    echo "usage: $0 'username'" # Print usage message as said on the task description
    exit 1
fi
# 5
user="$1" #user = argument

# 6
mkdir -p "$user"_directory
cd "$user"_directory

mkdir -p "$user"_documents
mkdir -p "$user"_music
mkdir -p "$user"_pictures
cd ..

# 7
tar -xf some_files.tar.gz

# 8

# cp some_files/a_picture_file.png "$user"_directory/"$user"_pictures/
# cp some_files/a_text_file.txt "$user"_directory/"$user"_documents/
# cp some_files/a_music_file.wav "$user"_directory/"$user"_music/

# not hard coded:

cp some_files/*.png "$user"_directory/"$user"_pictures/
cp some_files/*.txt "$user"_directory/"$user"_documents/
cp some_files/*.wav "$user"_directory/"$user"_music/

#9
cat "$user"_directory/"$user"_documents/*.txt

# 10

cd "$user"_directory/"$user"_documents/ # go into the right directory
echo "$document_value_1" > a_very_important_file.txt # place the text /append it inside
cd ../.. # going back to the root directory

# 11

cd "$user"_directory/"$user"_documents/ # go into the right directory again
echo "$document_value_2" >> a_very_important_file.txt
cd ../..

# 12
cat "$user"_directory/"$user"_documents/a_very_important_file.txt 

# 13
cd "$user"_directory/"$user"_pictures/ # go into the picture directory
echo "$picture_data" > a_very_tiny_picture.pgm
cd ../..

# 14 Tar make pack and go file
# $yymmdd_HHMMSS
yymmdd_HHMMSS=$(date +"%y%m%d_%H%M%S") # get the date and time
tar -cjf "${user}_directory_${yymmdd_HHMMSS}.tar.xz" "$user"_directory

# END ' mark everything under with ctrl + shift + 7':

# rm -r "$user"_directory
# rm -r some_files
# rm -r "${user}_directory_${yymmdd_HHMMSS}.tar.xz"