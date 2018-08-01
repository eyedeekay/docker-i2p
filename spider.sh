#! /usr/bin/env sh

Links=$(lynx -dump -listonly -force_html -nonumbers http://127.0.0.1:7657/$1 | grep '127.0.0.1' | grep -v '?' | grep -v '#' | grep -v 7658 | grep -v 6668)

echo 'SCREENSHOTS' > SCREENSHOTS-$1.md
echo '===========' >> SCREENSHOTS-$1.md
echo '' >> SCREENSHOTS-$1.md

for f in $Links; do
    v=$(echo $f.png | sed 's|http://127.0.0.1:7657/||g' | tr -d '/' )
    wkhtmltoimage $f $v
    mat $v
    echo " * ![$f]($v)" >> SCREENSHOTS-$1.md
    echo '' >> SCREENSHOTS-$1.md
done

echo '' >> SCREENSHOTS-$1.md
