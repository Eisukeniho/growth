#!/bin/bash

SRC=$(basename $1)
DIR=$(dirname $1)

groovyc -d $DIR $1
groovy &
