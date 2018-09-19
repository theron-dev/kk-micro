#!/bin/bash

WORDIR=`pwd`
KK_FLAGS=
TO_VER=v1.0
PREFIX=stage_

if [ ! -d "sql" ]; then
    mkdir sql
fi


echo "" > sql/$PREFIX$TO_VER.sql

build() {

    COUNT=$1
    OUTDIR=$2
    SUFFIX=$3
    
    for I in `seq 1 $COUNT`
    do
        PIX=${PREFIX}${I}_
        echo "kk-cli sql --prefix ${PIX} --autoIncrement 1 $KK_FLAGS >> $OUTDIR/sql/$PREFIX$TO_VER.sql"
        kk-cli sql --prefix ${PIX} --autoIncrement 1 $KK_FLAGS >> $OUTDIR/sql/$PREFIX$TO_VER.sql
    done

    echo "kk-cli sql --ver $OUTDIR/sql/$PREFIX$TO_VER$SUFFIX.json > /dev/null"

    kk-cli sql --ver $OUTDIR/sql/$PREFIX$TO_VER$SUFFIX.json > /dev/null
}

# export KK_FLAGS="--in $WORDIR/sql/todo_v1.0.json"

build 128 $WORDIR
