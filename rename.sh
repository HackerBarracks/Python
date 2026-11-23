#!/usr/bin/env bash
# rename_tasks.sh
# Renames task*.py -> mission*.py and Task*.py -> Mission*.py
# in the current folder and every folder inside it.

find . -type f \( -name 'task*.py' -o -name 'Task*.py' \) -print0 |
while IFS= read -r -d '' file; do
    dir=$(dirname "$file")
    name=$(basename "$file")

    newname="${name/#task/mission}"
    newname="${newname/#Task/Mission}"

    if [ -e "$dir/$newname" ]; then
        echo "Skipped (already exists): $dir/$newname"
    else
        mv -- "$file" "$dir/$newname"
        echo "Renamed: $file -> $dir/$newname"
    fi
done
