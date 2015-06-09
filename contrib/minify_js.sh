#!/bin/sh
P=".."
YUICOMPRESSOR_JAR="../yuicompressor/build/yuicompressor-2.4.8.jar"
JQUERY_JS="${P}/jquery-2.1.3/jquery-2.1.3.min.js"
JQUERY_UI_JS="${P}/jquery-ui-1.11.2/jquery-ui.js"
TARGET_JS="${P}/shared-static.js"
TMP_TARGET="/tmp/minified.js"

java -jar "${YUICOMPRESSOR_JAR}" "${JQUERY_JS}" -o "${JQUERY_JS}.minified" --charset utf-8 -v
java -jar "${YUICOMPRESSOR_JAR}" "${JQUERY_UI_JS}" -o "${JQUERY_UI_JS}.minified" --charset utf-8 -v

cat "${JQUERY_JS}.minified" > ${TMP_TARGET}
cat "${JQUERY_UI_JS}.minified" >> ${TMP_TARGET}

mv ${TMP_TARGET} ${TARGET_JS}

