# #!/bin/bash


# #gzip => bzip2 にするシェルスクリプト

#for文をlsで見つけた目的のファイル分行う
#現在いるディレクトリに (*.gz) がないときは ls が止めてくれる。
#lsで探索する際目的でない*.tar.gzを除外
#ファイルのサイズは変換前後ともに表示
for i in `ls *.gz | grep -v *.tar.gz`; do
	wc -c ${i}
	gunzip ${i}
	bzip2 ${i%.gz}
	wc -c ${i%.gz}.bz2
done
