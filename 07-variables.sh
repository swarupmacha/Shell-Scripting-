#!/bin/bash

#### special variable #####
# special variable is only used in "" quotion
echo "All args passed to script: $@"
echo "number of varibale passed to script: $#"
echo "script name : $0"
echo "who is running: $USER"
echo "home direcoty of user: " $HOME"
echo "PID OF this script : $$"" 
sleep $10
echo "PID of recnetly executed backgroup process: $!"
echo "all args passed to scipt: $*"