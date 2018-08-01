#! /usr/bin/env sh

Links=$(lynx -dump -listonly -force_html -nonumbers http://127.0.0.1:7657/ | grep '127.0.0.1')

for f in $Links; do
    v=$(echo $f.png | sed 's|http://127.0.0.1:7657/||g' | tr -d '/' )
    wkhtmltoimage $f $v
    echo "![$f]($v)" >> SCREENSHOTS.png
done
