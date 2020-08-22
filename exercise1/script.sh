#!/bin/bash

# Default URL
URL="http://www.google.com"

if [ ! -z "$1" ]
then
  URL="$1"
else
  read -p "Enter URL or press ENTER to use default $URL:" INPUT_URL
  if [ ! -z "$INPUT_URL" ]
  then
    URL="$INPUT_URL"
  fi
fi

curl -v $URL
exit 0
