#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $Home"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "process ID of the current script: $$"
echo "process ID of last backgroung command: $!"
