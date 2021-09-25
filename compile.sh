#!/bin/bash

SRC=$(basename $1)
#ディレクトリ上の全ての'~.java'を'SRC'に代入
#ex) BackSlashPrinter.java


DIR=$(dirname $1)
#各ディレクトリを'DIR'に代入
#ex) .//課題1/0001_1


#$1には、javaファイルが代入されている
#ex) BackSlashPrinter.java


javac -d $DIR $1
#ex) javac -d .//課題1/0001_1 .//課題1/0001_1/BackSlashPrinter.java


#以下のコマンドで実行する
#find ./ -type f -name "*.java" -exec ./compile.sh {} \;

