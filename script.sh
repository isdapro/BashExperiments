#!/bin/bash

checkdir="original-photos/*.jpg"

echo "Starting segregation..."

#List all files
for name in $checkdir
do
  filepath=${name##*/}
  dirto=$(echo $filepath | tr '-' '/')
  dirname=${dirto%/*}
  filename=${dirto##*/}
  mkdir -p "organized/$dirname"
  mv "$name" "organized/$dirname/$filename"
done

echo "Segregation Complete..."
