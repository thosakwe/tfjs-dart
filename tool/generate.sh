#!/usr/bin/env bash

function facade_gen() {
    PKG_DIR=tfjs/node_modules/@tensorflow/$1/dist
    mkdir -p lib/src/$1

    find $PKG_DIR -type f -name '*.d.ts' ! -name '*_test.d.ts' | while read -r line; do
        BASE=`basename $line`
        DART_NAME="${BASE/.d.ts/.dart}"
        #RELATIVE="${line/$PKG_DIR/lib/src/$1}"
        #RELATIVE_DART="${RELATIVE/.d.ts/.dart}"
        #mkdir -p `dirname $RELATIVE_DART`
        dart_js_facade_gen $line > "lib/src/$1/$DART_NAME"
    done
}

mkdir -p lib/src
facade_gen tfjs-core
facade_gen tfjs-layers
dart_js_facade_gen tfjs/src/index.ts > lib/src/tfjs.dart

find lib -type f -name '*.dart' | while read -r line; do
    dartfmt -w $line
done

git add lib