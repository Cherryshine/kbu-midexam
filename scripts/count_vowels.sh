#! /usr/bin/env bash

count=$(grep -o '[aeiou]' sample.txt | wc -w)
echo "Total vowels: $count"