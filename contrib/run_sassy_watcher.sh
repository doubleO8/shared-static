#!/bin/sh
P=".."
PROJECT="shared-static"
SOURCE_SCSS="${P}/sassy/${PROJECT}.scss"
TARGET_CSS="${P}/css/${PROJECT}.css"

while { inotifywait -e modify ../sassy/; }; do
	sass --sourcemap=none --style compressed "${SOURCE_SCSS}" "${TARGET_CSS}"
done;
