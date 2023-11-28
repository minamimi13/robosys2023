#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo NG at Line $1
    rest=1
}

minus() {
    local value=$1
    res=$((res - value))
}

res=0

### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

# 引き算のテスト
minus 3
[ "$res" = 12 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

