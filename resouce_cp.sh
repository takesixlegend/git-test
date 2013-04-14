#!/bin/sh

DIR=$2
if [ ! -d ${DIR} ] ; then
mkdir ${DIR}
fi

# 第一引数で指定したディレクトリ配下のファイルをコピー
for file in `find $1 -name "*"`; do
	cp -f "$file" "${DIR}"
done

#test