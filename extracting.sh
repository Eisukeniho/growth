#!/bin/bash

SRC=$(basename $1)
#ディレクトリ上の全ての'~.class'を'SRC'に代入
#ex) BackSlashPrinter.class
#なくてもコンパイルできる


DIR=$(dirname $1)
#各ディレクトリを'DIR'に代入
#ex) .//課題1/0001_1


#$1には、ファイルが代入されている
#ex) BackSlashPrinter.class

#echo $SRC


pochi $DIR/extracting_birthmarks.groovy $SRC
