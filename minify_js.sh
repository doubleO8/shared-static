#!/bin/sh
P="public_html"
YUICOMPRESSOR_JAR="yuicompressor/build/yuicompressor-2.4.8.jar"
JQUERY_JS="${P}/jquery-2.1.3/jquery-2.1.3.min.js"
JQUERY_UI_JS="${P}/jquery-ui-1.11.2/jquery-ui.js"
TARGET_JS="${P}/shared-static.js"

java -jar "${YUICOMPRESSOR_JAR}" "${JQUERY_JS}" "${JQUERY_UI_JS}" -o "${TARGET_JS}" --charset utf-8
