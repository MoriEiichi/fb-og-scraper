#!/bin/sh

# 事前にアクセストークンを取得しておくこと
token="{access_token}"

i=1
while read line; do
    echo "line: $i"
    curl -X POST \
         -F "id=$line" \
         -F "scrape=true" \
         -F "access_token=$token" \
        "https://graph.facebook.com"
    ((i++))
    echo "\n"
done < $1

echo "done."
