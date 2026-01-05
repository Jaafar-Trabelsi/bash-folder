#!/bin/bash

if [ -z "$1" ]; then
echo "First Argument is Empty ,please enter a directory : $0 <directory> "
exit 1
fi

if [ ! -d "$1" ]; then
echo "Error: Directory $1 does not exist."
exit 1
fi

mkdir -p "$1/Images" "$1/Documents" "$1/Scripts" "$1/Others"

for file in "$1"/*; do
    [ -f "$file" ] || continue

case "$file" in
    *.jpg|*.png|*.jpeg|*.gif)
    mv "$file" "$1/Images" ;;

    *.pdf|*.txt|*.docx)
    mv "$file" "$1/Documents" ;;

    *.sh)
    mv "$file" "$1/Scripts";;
    *)

    mv "$file" "$1/Others" ;;
esac
done

echo "Files Organized successfully : $1"
