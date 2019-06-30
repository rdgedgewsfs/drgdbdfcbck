#!/bin/sh
cd /tmp/none/
while (true)
do
sleep 10
result=`ps aux | grep -i "pusk.sh" | grep -v "grep" | wc -l`

if [ $result -ge 1 ]
	then
	echo "script is running"
else
	echo "script is not running"
	sudo ./pusk.sh
fi
done;


