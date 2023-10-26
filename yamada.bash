#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	ret=1
}

ret=0
a=北
[ "$a" = 南 ] || ng "$LINENO"
[ "$a" = 北 ] || ng "$LINENO"

exit $ret

