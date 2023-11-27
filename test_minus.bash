#!/bin/bash

out=$(seq 5 | ./minus)

[ "${out}" = 15 ]
