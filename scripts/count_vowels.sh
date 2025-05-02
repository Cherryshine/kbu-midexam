#! /usr/bin/env bash

count=$(grep -oi '[aeiou]' sample.txt | wc -w)
echo "Total vowels: $count"