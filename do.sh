#!/bin/bash

SRC=$(basename $1)
DIR=$(dirname $1)

echo $1 1
echo $DIR DIR

javac -d $DIR $1

