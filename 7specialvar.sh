#! /bin/bash

echo "all variables:$@"
echo "number of variables passed :$#"
echo "script name: $0"
echo "current directory:$PWD"
echo "home directory:$HOME"
echo "user:$USER"
echo "hostname:$hostname"
echo "process id:$$"
sleep 30 &
echo "process id of last background command:$!"



