#!/bin/bash

# Путь к каталогу репозитория
repo_directory=$(git rev-parse --show-toplevel)

# Формат, который мы ожидаем
expected_format="^#.*"

# Проверка формата для всех .txt файлов в репозитории
for file in $(find "$repo_directory" -name "*.txt"); do
    if grep -Eq "$expected_format" "$file"; then
        echo "Формат файла $file соответствует требованиям."
    else
        echo "Ошибка: Формат файла $file не соответствует требованиям."
    fi
done
