# Bash-file

# 1
user="linus_torvalds"

# 2
mkdir -p "$user" 

# 3
cp -r "$user" "${user}_2"

# 4
cd "${user}_2"
# inside ASSIGMENT_1/task_1_1/linus_torvalds_2/"

# 5
touch file_1
touch file_a
touch dangervirus

# 6
ls

# 7
ls  -1 *file* # *Text starts with 'Text' and Text* ends with 'Text' and so on.

# 8
mv dangervirus .dangervirus

# 9
ls 

# 10
ls -a

# 11
echo "Have a nice day ${user}"

# END ' mark everything under with ctrl + shift + 7'

# cd ..
# rm -r linus_torvalds
# rm -r linus_torvalds_2
# cd ~/NMBU_2026-2026/TEL211/assignment_1/task_1_1