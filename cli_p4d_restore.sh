if [ -f data/checkpoint.$1 ]; then
    rm -rf data/db.*
    rm -rf data/journal
    ./cli_p4d.sh -r data -jr checkpoint.$1
else
    echo Not found data/checkpoint.$1
fi
