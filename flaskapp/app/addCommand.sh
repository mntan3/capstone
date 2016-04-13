#!/bin/sh
#Adds a new command functionality to app

echo "Type the command"
read command
echo ${command// /}
tcomm="$(echo ${command// /})"

num=$(<./static/txt/number.txt)
echo "$num"

for i in `cat ./static/txt/languages.txt`
do
echo $i
echo "insert into sites values($num, '$command in $i', '$command', '$i', './includes/${i}_${tcomm}.html','')" >> ./schema.sql
echo 'Page under development ' >> ./templates/includes/${i}_${tcomm}.html
num=$((num+1))
done

echo $num > './static/txt/number.txt'
echo $command >> './static/txt/commands.txt'
