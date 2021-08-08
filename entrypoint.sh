#!/bin/sh
echo "initalizing"
if [ -e /etc/scm/init.sh ]; then
    chmod +x /etc/scm/init.sh
    /etc/scm/init.sh
fi

git $@
