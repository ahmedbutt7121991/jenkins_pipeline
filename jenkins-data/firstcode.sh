#!/bin/bash

echo "Lets test our githook trigger"
echo "ngork is used to open 8080 port to public"
Name=$1
Lastname=$2
Show_name=$3

if [ "$Show_name" = "true" ]; then
  echo "Hello!!	$Name $Lastname"
else
  echo "Set Show_name to true to see the Name"
fi
