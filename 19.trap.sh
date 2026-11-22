set -e

trap 'echo "there is error at $LINENO, COMMAND: $BASH_COMMAND"' ERR

echo "Hello world"
echoo "bye"
echo "see you"