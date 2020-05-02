if [ ! -f bin/p4 ]; then
    wget -O bin/p4 ftp://ftp.perforce.com/perforce/r20.1/bin.linux26x86_64/p4
    chmod 700 bin/p4
fi

bin/p4 $*
