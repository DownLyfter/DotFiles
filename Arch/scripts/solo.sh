#/bin/bash
PID=$(xprop | grep PID | grep -Eo '[0-9]{1,9}')
echo $PID
kill -STOP $PID
echo "Froze Game"
sleep 10
kill -CONT $PID
echo "Done"
