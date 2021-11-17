#!/usr/bin/env bash

FILE=$1
echo -e "\e[42;30mLeeching Torrent.......\e[0m"
aria2c $1 --seed-time=0 --seed-ratio=0

echo -e "\e[42;30mRemoving Torrent.......\e[0m"
rm $1
