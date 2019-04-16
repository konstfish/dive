#!/usr/bin/env bash

echo "[!] dive widget installer"

echo "[*] setting up osx-cpu-temp"
git clone https://github.com/lavoiesl/osx-cpu-temp
cd osx-cpu-temp
make
mv osx-cpu-temp ../scripts
cd ..
chmod -R 755 scripts

echo "[*] installing ifstat"
brew install ifstat

echo "[*] installing python3"
brew install python

echo "[!] please enter widget details"
printf "[>] airpod alias: "
read headset

printf "[>] network adapter name: "
read nwadap

printf "[>] music platform (spotify/itunes/both): "
read platform

printf "[>] VPN name: "
read vpn

echo "[*] writing data.json"
echo "{  \"bt_headset\":\""$headset"\"," > data.json
echo "  \"nw_adapter\":\""$nwadap"\"," >> data.json
echo "  \"vpn_name\":\""$vpn"\"," >> data.json
echo "  \"platform\":\""$platform"\"}" >> data.json

echo "[!] you can change these values later in data.json"

printf "[>] set up widget order? (y/n): "
read order
if [ $order == "y" ]
  then
    utils/./widget-arranger
  else
    echo "[!] you can set this up later by running utils/./widget-arranger"
fi

echo "[*] moving files"

mkdir -p $HOME/Library/Application\ Support/Übersicht/widgets/dive
mv * $HOME/Library/Application\ Support/Übersicht/widgets/dive/

cd ..
sudo rm -r dive

echo "[!] done!"
