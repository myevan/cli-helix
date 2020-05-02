if [ ! -f bin/p4d ]; then
    curl -o bin/p4d ftp://ftp.perforce.com/perforce/r20.1/bin.macosx1010x86_64/p4d 
    chmod 700 bin/p4d
fi

bin/p4d $* 
