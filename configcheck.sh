#!/bin/bash
find /config -maxdepth 1 -type f -name "*.yaml" ! -name "secrets.yaml" -print0 | while IFS= read -r -d '' file ; do esphome "$file" config ; done