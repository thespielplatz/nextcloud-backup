#!/bin/bash

curl -k -T test/test.txt -u "if5nT5A7Ynesqge:yPYCL3Acf9" \
  -H 'X-Requested-With: XMLHttpRequest' \
  "https://nextcloud.satoshiengineering.com/public.php/webdav/$(date '+%Y-%m-%d_%H-%M')-testfile.txt"
