#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"
echo "Process iD of current  shell script: $$"

./15-other-script.sh

echo "After calling other script, course: $COURSE"