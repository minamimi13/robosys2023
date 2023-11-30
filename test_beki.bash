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
out=$(echo -e "5\n2" | ./beki)
[ "${out}" = "底(1～10の間の整数で)：指数(1～10の間の整数で)：5 ^ 2 = 25" ] || ng ${LINENO}

out=$(echo -e "11\n22" | ./beki)
[ "${out}" = "底(1～10の間の整数で)：指数(1～10の間の整数で)：エラー：数が大きすぎてしまうか、値が複雑になる可能性があるので表示できません"] || ng ${LINENO}

out=$(echo -e "-2\n-4" | ./beki)
[ "${out}" = "底(1～10の間の整数で)：指数(1～10の間の整数で)：エラー：数が大きすぎてしまうか、値が複雑になる可能性があるので表示できません"] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo -e "a" | ./beki)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "底(1～10の間の整数で)：エラー：数字ではないか、もしくは入力した 値が少数になっています" ] || ng ${LINENO}

out=$(echo -e " "| ./beki) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "底(1～10の間の整数で)：エラー：数字ではないか、も>しくは入力した 値が少数になっています" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res

