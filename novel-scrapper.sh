#!/bin/bash

# Check that 2 arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 URL NUM_CHAPTERS"
    exit 1
fi

url=$1
num_chapters=$2
novel_name=$(echo "$url" | rev | cut -d'/' -f2 | rev)
mkdir "$novel_name"

for ((i=1; i<=$num_chapters; i++)); do

    chapter_url="$url"chapter-$i/
    curl -s "$chapter_url" > chapter_page.html
    content=$(xmllint --html --xpath "//div[@class='text-left']" chapter_page.html 2>/dev/null)

    # Remove unwanted elements and patterns

    content=$(echo "$content" | sed \
        -e '/^<script.*/d' \
        -e '/^<ins.*/d' \
        -e 's/<!-- conter -->//g' \
        -e 's/     (adsbygoogle = window.adsbygoogle || \[\]).push({});//g' \
        -e 's/<div class="text-left">//g' \
        -e 's/<p>//g' \
        -e 's/<\/p>//g' \
        -e 's/&#13;//g' \
        -e 's/<div class="novel-content[^"]*">.*<\/div>//g' \
        -e 's/<script async="" src="https:\/\/pagead2\.googlesyndication\.com\/pagead\/js\/adsbygoogle\.js?client=ca-pub-3456753121333659" crossorigin="anonymous"\/>&#13;//g' \
        -e 's/<div class="novel-content_[^"]*" id="novel-[^"]*">//g' \
        -e 's/<script async="" src="https:\/\/pagead2\.googlesyndication\.com\/pagead\/js\/adsbygoogle\.js?client=ca-pub-3456753121333659" crossorigin="anonymous"\/>//g' \
        -e 's/]]><\/script>//g' \
        -e 's/<\/div>//g' \
        -e 's/<div class="novel-content" id="novel-[^"]*">//g' \
    )

    content=$(echo "$content" | awk '/^[[:space:]]*$/ { if (blank) { next } else { blank=1 } } { blank=0; print }')

    content=$(echo "$content" | awk 'BEGIN { ORS="\n\n" } /[[:graph:]]/ { print; print "" }')

    printf "$content" > "$novel_name/chapter-$i.txt"

    rm chapter_page.html
    
done
