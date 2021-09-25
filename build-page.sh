#!/bin/bash
SRCDIR=$1
OUTDIR=$2
HTMLPATH=$3
COMPONENTSDIR=$SRCDIR"/components/"

cat $COMPONENTSDIR"header.html" $HTMLPATH $COMPONENTSDIR"footer.html" > $OUTDIR"/"$(basename $HTMLPATH)
echo "Built page "$HTMLPATH