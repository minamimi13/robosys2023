#!/usr/bin/python3
# SPDX-FileCopyrightText: 2023 Saori Kitami
# SPDX-License-Identifier: BSD-3-Clause

import sys

ans = 0
first_line = True

for line in sys.stdin:
    try:
        value = float(line)
        if first_line:
            ans = value
            first_line = False
        else:
            ans -= value
    except ValueError:
        print(f"Error: Invalid input - {line}", file=sys.stderr)

print(ans)

