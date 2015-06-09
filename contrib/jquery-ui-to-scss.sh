#!/bin/sh
P=".."
JQUERY_UI="jquery-ui-1.11.4"
BASE="jquery-ui"
STRUCTURE="jquery-ui.structure"
THEME="jquery-ui.theme"

sass-convert --from css --to scss "${P}/${JQUERY_UI}/${BASE}.css" "${P}/${JQUERY_UI}/_${BASE}.scss"
sass-convert --from css --to scss "${P}/${JQUERY_UI}/${STRUCTURE}.css" "${P}/${JQUERY_UI}/_${STRUCTURE}.scss"
sass-convert --from css --to scss "${P}/${JQUERY_UI}/${THEME}.css" "${P}/${JQUERY_UI}/_${THEME}.scss"
