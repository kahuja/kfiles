#! /bin/bash

if [ $# -ne 2 ]; then
	echo 1>&2 Usage: $0 StartingEpisode EndingEpisode
	exit 127
fi

StartCounter=$1
EndCounter=$2

for ((i=$StartCounter; i <=$EndCounter; i++))
do
	curl -O http://audio.thisamericanlife.org/jomamashouse/ismymamashouse/$i.mp3
	sleep 62
done


