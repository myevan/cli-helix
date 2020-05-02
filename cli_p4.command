if [ ! -f bin/p4 ]; then
    curl -o bin/p4 ftp://ftp.perforce.com/perforce/r20.1/bin.macosx1010x86_64/p4
    chmod 700 bin/p4
fi

bin/p4 $*
