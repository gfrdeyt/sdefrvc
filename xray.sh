#!/bin/sh
if [ ! -f UUID ]; then
  UUID="43f7edb8-e1f3-4f40-8610-2fba8b97dbcb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

