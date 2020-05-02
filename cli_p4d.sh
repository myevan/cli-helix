if [ ! -f bin/p4d ]; then
    mkdir -p bin
    wget -O bin/p4d ftp://ftp.perforce.com/perforce/r20.1/bin.linux26x86_64/p4d 
    chmod 700 bin/p4d
fi

bin/p4d $* 
