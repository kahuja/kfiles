#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 input_file"
  exit 1
fi

extention=`expr "$1" : '.*\(\..*\)'`
newname=`basename $1 $extention`.jpeg

echo "Converting $1 to $newname..."

convert -quality 95 $1 $newname

exit 0
