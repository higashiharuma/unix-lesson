#!/bin/bash


#コマンドにより接続先が変わり、sshで接続するシェルスクリプト
#コマンドで条件判定を行うため第0引数を用いる。
#求めているコマンドが得られないときはその旨を表示する。
if [ ${0#*/bin/} == venus ]; then
	ssh user@venus
elif [ ${0#*/bin/} == atlas ]; then
	ssh user@atlas
else
	echo "venus あるいは atlas を入力してください。"
fi
