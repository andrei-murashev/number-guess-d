#!/bin/bash

D_FILES=$(find . -type f -wholename "./*.d" ! -wholename "./main.d")
ldc2 main.d -I. $D_FILES