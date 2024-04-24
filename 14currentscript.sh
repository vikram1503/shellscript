#!/bin/bash

course="devops from current strip"

echo "before calling other script:$course"
echo "process id of current shellscript:$$"

./15otherscript.sh
echo "after calling other script:$course"
