#!/bin/bash
SRCDIR=$1
OUTDIR=$2
HTMLPATH=$3
COMPONENTSDIR=$SRCDIR"/components/"
AUTHORNAME=$(sed -n 1p $HTMLPATH)
AUTHORHREF=$(sed -n 2p $HTMLPATH)
LANGUAGE=$(sed -n 3p $HTMLPATH)
DATE=$(sed -n 4p $HTMLPATH | date -d - -I)