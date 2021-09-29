#!/bin/bash

SRC=$(basename $1)
#ディレクトリ上の全ての'~.class'を'SRC'に代入
#ex) BackSlashPrinter.class


DIR=$(dirname $1)
#各ディレクトリを'DIR'に代入
#ex) .//課題1/0001_1


#$1には、クラスファイルが代入されている
#ex) .//課題1/0004_1/BackSlashPrinter.class

echo -----------------------------------------------
echo $1
#解答と、どのプログラムを比較しているか表示

pochi comparing_birthmarks.groovy .//解答1/BackSlashPrinter.class $1 >> k1.txt


#以下のコマンドで実行する
#find ./ -type f -name "*.class" -exec ./comparing_k1.sh {} \;
