[ -d bin ] || mkdir bin
[ -d var ] || mkdir var

if [ ! -d data ]; then
    mkdir data
    ./cli_p4d.command -r data -L var\log -J var\journal -xi $*
fi

./cli_p4d.command -r data -L var\log -J var\journal $* 
