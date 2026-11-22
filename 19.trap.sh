set -e

trap 'echo "there is error at LINEND, COMMAND: $BASHCOMMAND"' ERR

echo "Hello world"
echoo "bye"
echo "see you"