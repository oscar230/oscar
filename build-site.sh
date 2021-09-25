SRCDIR="./src/"
OUTDIR="./out/"

rm -rf $OUTDIR/*
mkdir -p $OUTDIR
cp $SRCDIR/index.html $OUTDIR/index.html
cp $SRCDIR/favicon.ico $OUTDIR
cp -r $SRCDIR/resources/ $OUTDIR

echo "\e[32mSite built successfully!\e[39m"
