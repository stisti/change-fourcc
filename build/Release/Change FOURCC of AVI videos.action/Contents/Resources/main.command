#!/usr/bin/env sh

# main.command
# Change FOURCC of AVI videos

#  Created by Sami Tikka on 26.7.2008.
#  Copyright 2008 Sami Tikka. All rights reserved.

if [ -z "$fourccCode" ]; then
    logger "FOURCC code was not specified!"
    exit 1
fi

while read file; do
    "${BUNDLE_PATH}/Contents/Resources/cfourcc" -u "$fourccCode" "$file" >/dev/null && echo "$file"
done

exit 0
