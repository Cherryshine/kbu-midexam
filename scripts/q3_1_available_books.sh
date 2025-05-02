#!/usr/bin/env bash

jq -r '.library.categories[].books[] | select(.available == true and .copies >= 2) | .title' library.json
