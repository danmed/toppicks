#!/bin/bash
username=toppicks
#Delete existing file if it exists
rm htmlpage
rm htmlpage2
rm htmlpage3

#Grab the page we want
wget http://www.sky.com/tv/channel/skycinema/gallery/coming-soon-to-sky-cinema-premiere -O htmlpage
wget https://www.sky.com/watch -O htmlpage2
wget "http://www.sky.com/tv/channel/skycinema/collection/this-week's-sky-cinema-premieres" -O htmlpage3

#Find all the links to the images we want and dump them in to links3.txt
cat htmlpage | grep -Eo "(http|https)://www.asset1.net/tv/pictures/movie/[a-zA-Z0-9./?=_-]*.jpg" | sort | uniq > links3.txt

#Find all the links to the images we want and dump them in to links2.txt
cat htmlpage2 | grep -Eo "(http|https)://www.sky.com/assets2/[a-zA-Z0-9./?=_-]*" | sort | uniq > link2s.txt

#Find all the links to the images we want and dump them in to movies.txt
cat htmlpage3 | grep -Eo "(http|https)://www.asset1.net/tv/pictures/movie/[a-zA-Z0-9./?=_-]*KA-2.jpg" | sort | uniq > movies.txt
cat htmlpage3 | grep -Eo "(http|https)://www.asset1.net/tv/pictures/movie/[a-zA-Z0-9./?=_-]*KA-1.jpg" | sort | uniq >> movies.txt

cat *.txt > all.txt

sed -i 's/.net/.net.rsz.io/g' all.txt
sed -i 's/https/http/g' all.txt
#sed -i 's/.net/.net.rsz.io/g' movies.txt
sed -i 's/.com/.com.rsz.io/g' all.txt
sed -i 's/?downsize=320//g' all.txt

#Pick random line in all.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "all.txt")
name=toppicks1.png
resize="?w=400&h=240&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in all.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "all.txt")
name=toppicks3.png
resize="?w=183&h=116&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in all.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "all.txt")
name=toppicks4.png
resize="?w=183&h=116&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in all.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "all.txt")
name=toppicks6.png
resize="?w=183&h=116&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in all.txt and download it
linenum=$(( ( RANDOM % 50 )  + 1 ))
link=$(sed -n ${linenum}p "all.txt")
name=gmanpanthro.png
resize="?w=183&h=116&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in movies.txt and download it
linenum=$(( ( RANDOM % 5 )  + 1 ))
link=$(sed -n ${linenum}p "movies.txt")
name=toppicks2.png
resize="?w=200&h=240&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

#Pick random line in movies.txt and download it
linenum=$(( ( RANDOM % 5 )  + 1 ))
link=$(sed -n ${linenum}p "movies.txt")
name=toppicks5.png
resize="?w=200&h=240&mode=stretch&format=png"
echo $link$resize
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"


#Pick random line in movies.txt and download it
linenum=$(( ( RANDOM % 5 )  + 1 ))
link=$(sed -n ${linenum}p "movies.txt")
name=toppicks2.png
url1=http://res.cloudinary.com/
url2=/image/fetch/w_200,h_240,f_png/l_cinema,g_south_west,c_scale,w_74/
echo $url1$username$url2$link
wget $url1$username$url2$link -O /usr/share/enigma2/slyk-1-hd/skyicons/$name

#Pick random line in movies.txt and download it
linenum=$(( ( RANDOM % 5 )  + 1 ))
link=$(sed -n ${linenum}p "movies.txt")
name=toppicks5.png
url1=http://res.cloudinary.com/
url2=/image/fetch/w_200,h_240,f_png/l_cinema,g_south_west,c_scale,w_74/
echo $url1$username$url2$link
wget $url1$username$url2$link -O /usr/share/enigma2/slyk-1-hd/skyicons/$name
