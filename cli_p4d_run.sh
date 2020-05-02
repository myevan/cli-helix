[ -d bin ] || mkdir bin
[ -d var ] || mkdir var

if [ ! -f bin/p4d ]; then
    wget -O bin/p4d ftp://ftp.perforce.com/perforce/r20.1/bin.linux26x86_64/p4d 
    chmod 700 bin/p4d
fi

if [ ! -d data ]; then
    mkdir data
    bin/p4d -r data -L var\log -J var\journal -xi $*
fi

bin/p4d -r data -L var\log -J var\journal $* 
