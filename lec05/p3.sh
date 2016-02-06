tr -cs '[:alpha:]' '\n' < frankenstein.txt | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort | grep monster | tr -cd '[:digit:]' | less
