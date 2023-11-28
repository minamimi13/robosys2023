#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Saori Kitami
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
out=$(echo -e "5\n3" | ./minus)
[ "${out}" = "大きい方の数字：小さい方の数字：5 - 2 = 3" ] || ng ${LINENO}

out=$(echo -e "3\n5" | ./minus)
[ "${out}" = "大きい方の数字：小さい方の数字：エラー：小さい数の方が大きいので計算できません"] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo -e "a" | ./minus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "大きい方の数字：エラー：数字ではありません" ] || ng ${LINENO}

out=$(echo -e " "| ./minus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "大きい方の数字：エラー：数字ではありません" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res

