#!/bin/bash
SRCDIR="src"
OUTDIR="out"
PAGES=$SRCDIR"/pages/*"

rm -rf $OUTDIR/*
mkdir -p $OUTDIR

cp -r $SRCDIR/resources/ $OUTDIR
cp -r $SRCDIR/styles/ $OUTDIR
cp $SRCDIR/* $OUTDIR 2>/dev/null

for page in $PAGES; do
    [ -e "$page" ] || continue
    sh build-page.sh $SRCDIR $OUTDIR $(realpath $page)
done

echo "\e[32mSite built successfully!\e[39m"
