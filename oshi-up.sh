#!/usr/bin/env bash

FILE=$1
echo -e "\e[42;30mAttempting upload file to oshi.at.......\e[0m"
curl -T $1 https://oshi.at  
