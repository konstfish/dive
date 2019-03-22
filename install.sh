#!/usr/bin/env bash

echo "[!] dive widget installer"

echo "[*] setting up osx-cpu-temp"
git clone https://github.com/lavoiesl/osx-cpu-temp
cd osx-cpu-temp
make
mv osx-cpu-temp ../scripts
chmod -R 755 scripts
cd ..

echo "[*] installing ifstat"
brew install ifstat


echo "[*] installing python3"
brew install python

printf "[>] Airpod Alias: "
read headset

printf "[>] Network Adapter Name: "
read nwadap

printf "[>] VPN Name: "
read vpn

echo "[*] writing data.json"
echo "{\n  \"bt_headset\":\""$headset"\"," > data.json
echo "  \"nw_adapter\":\""$nwadap"\"," >> data.json
echo "  \"vpn_name\":\""$vpn"\"\n}" >> data.json

echo "[>] Set Up Widget Order? (y/n): \c"
read order
if [ $order == "y" ]
  then
    ./widget-arranger
  else
    echo "[!] you can set this up later by running ./widget-arranger"
fi

echo "[*] moving files"

mkdir -p $HOME/Library/Application\ Support/Übersicht/widgets/dive
mv * $HOME/Library/Application\ Support/Übersicht/widgets/dive/

echo "[!] done!"
