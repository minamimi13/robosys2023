#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Saori Kitami
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      rest=1
}

res=0

### I/O ###
out=$( echo 4 誕生月を入力してください： | ./Uranai)
[ "${out}" = 4月の今日の運勢は行動力の勝利です ] || ng ${LINENO}


### STRANGE INPUT ###
out=$(echo あ | ./Uranai)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "エラー：数字ではありません" ] || ng ${LINENO}

out=$(echo | ./Uranai) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "エラー：数字ではありません" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
  exit $res
