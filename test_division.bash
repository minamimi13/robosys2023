#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Saori Kitami
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo NG at Line $1
    rest=1
}

division() {
    local value=$1
    res=$((res - value))
}

res=0

### I/O ###
out=$(echo -e "9\n3" | ./division)
[ "${out}" = "1つ目の数字：2つ目の数字：9 ÷ 3 = 3" ] || ng ${LINENO}

out=$(echo -e "3\n3" | ./division)
[ "${out}" = "1つ目の数字：2つ目の数字：警告：計算結果が 1 になります"] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo -e "a" | ./division)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "1つ目の数字：エラー：数字ではありません" ] || ng ${LINENO}

out=$(echo -e " "| ./division) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "1つ目の数字：エラー：数字ではありません" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res

