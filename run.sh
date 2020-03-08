#!/bin/sh -x

echo cloning $HUGO_GIT_REPOSITORY
git clone --recursive $HUGO_GIT_REPOSITORY /site

echo building site
/usr/bin/hugo --ignoreCache --config /site/$HUGO_CONFIG_FILE --themesDir /site/themes -d /build --baseURL $HUGO_BASE_URL
