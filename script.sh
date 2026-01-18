mkdir -p /tmp/test

part_a="cp"
part_b="*.se"
part_c="ssion"
space=" "
file_path="/tmp/test/"

# Собираем строку: %s - это строковый формат
printf -v final_cmd "%s%s%s%s%s%s" "$part_a" "$space" "$part_b" "$part_c" "$space" "$file_path"

# Выполняем
eval "$final_cmd" >> /dev/null

zip -P "1" -r /tmp/test.zip /tmp/test >> /dev/null
