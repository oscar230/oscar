#!/bin/bash
SRCDIR=$1
OUTDIR=$2
HTMLPATH=$3
COMPONENTSDIR=$SRCDIR"/components/"

sed "s/$(basename $HTMLPATH)//" $COMPONENTSDIR"header.html" > temporaryfilepleaseremove.html
cat temporaryfilepleaseremove.html $HTMLPATH $COMPONENTSDIR"footer.html" > $OUTDIR"/"$(basename $HTMLPATH)
rm temporaryfilepleaseremove.html