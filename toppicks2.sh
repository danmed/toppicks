#!/bin/bash
#Delete existing file if it exists
rm htmlpage

#Grab the page we want
wget http://www.sky.com/tv/channel/skycinema/gallery/coming-soon-to-sky-cinema-premiere -O htmlpage

#Find all the links to the images we want and dump them in to links.txt
cat htmlpage | grep -Eo "(http|https)://www.asset1.net/tv/pictures/movie/[a-zA-Z0-9./?=_-]*.jpg" | sort | uniq > links.txt

sed -i 's/.net/.net.rsz.io/g' all.txt

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks1.png
resize="?w=400&h=240&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks3.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks4.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks6.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=gmanpanthro.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name
