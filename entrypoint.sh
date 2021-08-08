#!/bin/sh

for r in $REPOS; do
    NEW_REPO="/git/${r}.git"
    echo "setting repo ${r}"

    mkdir -p $NEW_REPO
    cd $NEW_REPO && git init --bare
done

if [ -e /etc/scm/init.sh ]; then
    echo "initalizing"
    chmod +x /etc/scm/init.sh
    /etc/scm/init.sh
fi

git $@
