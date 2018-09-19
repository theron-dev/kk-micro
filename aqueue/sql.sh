#!/bin/bash

WORDIR=`pwd`
KK_FLAGS=
TO_VER=v1.0
PREFIX=aqueue_

if [ ! -d "sql" ]; then
    mkdir sql
fi

OUTDIR=$WORDIR/sql

kk-cli sql --prefix $PREFIX --autoIncrement 1 $KK_FLAGS --ver $OUTDIR/$PREFIX$TO_VER.json > $OUTDIR/$PREFIX$TO_VER.sql
