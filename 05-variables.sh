echo "Please enter your username"
#read command is used to take input from user
read USER_NAME

echo "your username is $USER_NAME"

echo "please enter your password"
#read -s command is used to take input from user without displaying it on the screen
read -s PASSWORD
echo "your password is $PASSWORD" #for testing purpose only, in real time we should not display the password on the screens