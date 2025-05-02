#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "No numbers provided"
  exit 1
fi

sum=0
for num in "$@"; do
  sum=$((sum + num))
done

echo "$sum"
