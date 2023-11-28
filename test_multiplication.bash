#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Saori Kitami
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      rest=1
}

res=1

### I/O ###
out=$(seq 5 | ./multiplication)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(echo 5 | ./multiplication)
[ "${out}" = 5 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./multiplication)
[ "${out}" = "エラー：数字ではありません。" ] || ng ${LINENO}

out=$(echo | ./multiplication) #空文字
[ "${out}" = "エラー：数字ではありません。" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
  exit $res
