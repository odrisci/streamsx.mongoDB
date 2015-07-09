#! /bin/bash

CURR_DIR=$(dirname $(readlink -f $0))
MONGODB_TOOLKIT=${CURR_DIR}/../..

if [[ ! -L $MONGODB_TOOLKIT/impl/include/boost ]]; then
	ln -s $STREAMS_INSTALL/ext/include/streams_boost $MONGODB_TOOLKIT/impl/include/boost
fi

if [ "$1" = "includePath" ]; then 
	echo ". -fno-strict-aliasing";
fi
