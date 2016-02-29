#!/bin/bash
REPLACEMENT=( home about work play )

for ((i=0;i<4;i++)); do
    cat base.html | sed -E -e 's@<li(><a href="'"${REPLACEMENT[$i]}"'\.html">.*</a></li>)@<li class="current"\1@' -e 's/\[\[\[###\]\]\]/'"${REPLACEMENT[$i]}"'/g'> "${REPLACEMENT[$i]}.html"
done
