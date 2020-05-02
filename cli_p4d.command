[ -d bin ] || mkdir bin
[ -d var ] || mkdir var

if [ ! -f bin/p4d ]; then
    curl -o bin/p4d ftp://ftp.perforce.com/perforce/r20.1/bin.macosx1010x86_64/p4d 
    chmod 700 bin/p4d
fi

if [ ! -d data ]; then
    mkdir data
    bin/p4d -r data -L var\log -J var\journal -xi $*
fi

bin/p4d -r data -L var\log -J var\journal $* 
