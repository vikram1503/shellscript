#!/bin/bash

course="aaaaaaa"

echo "before calling other script:$course"
echo "process id of current shellscript:$$"

#./15otherscript.sh
source ./15otherscript.sh
echo "after calling other script:$course"
