#! /bin/bash

echo "Enter direct download link"
read burplink
wget -O burpsuite $burplink
downloadlocation=`pwd`
cd /usr/bin
mv burpsuite burpsuite_old
cd $downloadlocation
chmod 755 burpsuite
mv burpsuite /usr/bin/
burpsuite &
echo "----------------------------------------"
echo "Burpsuite has been successfully updated."
echo "----------------------------------------"
