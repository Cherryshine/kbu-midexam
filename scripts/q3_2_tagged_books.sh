#!/usr/bin/env bash

jq -r '.library.categories[].books[] | select(.tags | index("philosophy") or index("cosmology")) | "\(.title) by \(.author)"' library.json
