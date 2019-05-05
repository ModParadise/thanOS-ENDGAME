echo ThanOS Backend MaoZedongCracks
echo Checking Root Access..
if [ "$EUID" -ne 0 ]
  then echo "ThanOS Backend requires root for dkpg!"
  exit
fi
echo ThanOS has root access! Continuing...
echo Runtime:
uptime
echo Processing.
dpkg -r $1


echo Processed Package: $2
echo Complete.
echo running uicache
uicache
uicache --all
echo Reloading SpringBoard...
killall SpringBoard
