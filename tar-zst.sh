#!/usr/bin/env bash

# Archives a given file/folder a highly ccomp[ressed .tar.zst archive

TARGET=$1

echo -e "\e[38;5;$((RANDOM%257))mMaking .tar archive.....\e[0m"
tar -cvf $1.tar $1 --owner=0 --group=0~   
echo -e "\e[38;5;$((RANDOM%257))mMaking .tar.zst archive.....\e[0m"
pzstd $1.tar -o $1.tar.zst -p 4 --ultra -22
echo -e "\e[38;5;$((RANDOM%257))mRemoving temp .tar archive.....\e[0m"
rm -f $1.tar
