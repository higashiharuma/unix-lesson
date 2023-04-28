#!/bin/bash


#引数の存在について
#条件式は[ <条件式> ] のようにスペースが必要
#-d オプションはディレクトリが存在するとき真であるのでその逆
for i in ${@}; do 
	if [ ! -d ${i} ] ; then 
		echo "ディレクトリ ${i} が存在しません。"
		exit 1
	fi
done

#圧縮の実行
for i in $@; do
	tar czvf ${i}.tar.bz2 ${i}
done