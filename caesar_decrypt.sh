#!/bin/sh
# source: https://chris-lamb.co.uk/posts/decrypting-caesar-cipher-using-shell

# check number of arguments
if (( $# != 1 )); then
    echo "Usage: $0 TEXT"
    exit -1
fi

IN=$1
filling="[@*26]"

# source: https://unix.stackexchange.com/questions/510838
for i in $(seq 25); do
    rot="[@*$i]"
    tr $rot\A-Z$filling\a-z A-ZA-Za-za-z <<< "$i: $IN"
done

exit 0
