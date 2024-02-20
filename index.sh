#!/bin/bash

arr[0]="bot: 👋"
arr[1]="bot: 🥳"
arr[2]="bot: 😬"
arr[3]="bot: 👨‍💻"
arr[4]="bot: 😪"
arr[5]="bot: 😎"
arr[6]="bot: 🙄"
arr[7]="bot: 👻"

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

sed -i "s/Last Update: .*/Last Update: ${d}/" README.md

git config --local user.email "richuser5958@gmail.com"
git config --local user.name "ChefClaw"
git commit -am "${arr[$rand]} - Last Update ${d}"