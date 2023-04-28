#!/bin/bash


#tar.gz => tar.bz2 にするシェルスクリプト

#引数の数、拡張子は問題で与えられているので
#存在するかのみ確認
if [ ! -f ${1} ] ; then 
	echo "指定したファイルが存在しません。"
	exit 1
fi

#操作するディレクトリ DNAME 拡張子は省く
DNAME=${1%.tar.gz}

#一度解凍し、その後圧縮する。
tar xzvf ${DNAME}.tar.gz ${DNAME}
tar czvf ${DNAME}.tar.bz2 ${DNAME}

#必要に応じて途中作成した解凍したファイルを削除
rm -r ${DNAME}