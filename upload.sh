#!/bin/bash

# Import .env
if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

echo "Starting Backup upload to ${NEXTCLOUD_HOST}"

curl -k -T test/test.txt -u "${NEXTCLOUD_SHARE}:${NEXTCLOUD_PWD}" \
  -H 'X-Requested-With: XMLHttpRequest' \
  "${NEXTCLOUD_HOST}/public.php/webdav/$(date '+%Y-%m-%d_%H-%M')-archive.txt"
